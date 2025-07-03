#!/bin/bash

# 清空旧的输出文件
> ./out.txt

# 遍历所有子目录-mattr=+neon,+vfp2
for dir in */; do
    # 去除目录末尾的斜杠
    dir=${dir%/}
    
    # 编译源代码
    # clang -w -g -O0 -fno-builtin \
    #     -mfloat-abi=soft \
    #     -o "${dir}/${dir}" "${dir}"/*.c|| {
    #     echo "编译失败: ${dir}"
    #     continue
    # }
    llvm-as "${dir}/${dir}.ll" -o "${dir}/${dir}.bc"
    llc-14 "${dir}/${dir}.bc" -mattr=+neon,+vfp2 -filetype=obj --float-abi=hard   -o "${dir}/${dir}.o" -dwarf-version=4
    clang "${dir}/${dir}.o" -O0 -Xclang -disable-O0-optnone -target arm -march=armv4t -mfloat-abi=hard -fno-builtin  -gdwarf-4 -o "${dir}/${dir}"

    # 运行valgrind并保存输出到当前目录
    valgrind --tool=callgrind \
             --simulate-cache=yes \
             --branch-sim=yes \
             --trace-children=yes \
             --dump-instr=yes \
             --collect-jumps=yes \
             --instr-atstart=yes \
             --I1=1024,8,64 \
             --callgrind-out-file="${dir}/callgrind.out" \
             "./${dir}/${dir}"

    # 提取数据并写入out.txt
    if [ -f "${dir}/callgrind.out" ]; then
    # 获取最后一个totals记录的第二个字段
    # value=$(grep '^totals:' "${dir}/callgrind.out" | tail -n 1 | awk '{sum = $2 + $3 + $4 -189734; print sum}')
    # value=$(grep '^totals:' "${dir}/callgrind.out" | tail -n 1 | awk '{sum = $2; print sum}')
    value=$(callgrind_annotate --inclusive=yes --threshold=100 "${dir}/callgrind.out" | grep "$(basename "${dir}").c:main")

    value1=$(echo "$value" | grep -oP '(\d[\d,]*)\s+\(')
    value2=$(echo "$value1" | cut -d'(' -f1 | head -n 3)
    value3=$(echo "$value2" | sed 's/,//g' )

    value4=0
    for num in $value3; do
        value4=$((value4 + num*113))
    done

    # 增加有效性检查
        if [ -z "$value4" ]; then
            echo "警告: ${dir} 中未找到有效性能数据"
            value4="N/A"
        else
        # 写入结果文件 ${dir}
            echo " ${value4}" >> ./out.txt
        fi
    else
        echo "警告: ${dir} 未生成callgrind.out文件"
    fi
done



