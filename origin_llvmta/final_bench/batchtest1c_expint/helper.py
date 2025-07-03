import os
import shutil

# 获取当前目录
base_dir = os.getcwd()
loop_csv_path = os.path.join(base_dir, "LoopAnnotations.csv")

# 读取主目录中的 LoopAnnotations.csv 内容
with open(loop_csv_path, "r") as f:
    loop_lines = f.readlines()

# 遍历所有子目录
for entry in os.listdir(base_dir):
    subdir_path = os.path.join(base_dir, entry)
    if os.path.isdir(subdir_path):
        # 清空子目录中的所有 .json 文件
        for file in os.listdir(subdir_path):
            if file.endswith(".json"):
                open(os.path.join(subdir_path, file), "w").close()

        # 将当前目录下的 .json 和 .c 文件移入子目录
        for file in os.listdir(base_dir):
            # if file.endswith(".json") or file.endswith(".c"):
            if file.endswith(".c"):
                src = os.path.join(base_dir, file)
                dst = os.path.join(subdir_path, file)
                shutil.copy(src, dst)

        # 跳过名为 ndes 的子目录
        # if entry == "ndes":
        #     continue

        # 将主目录 LoopAnnotations.csv 的内容附加到子目录中的同名文件
        sub_loop_csv = os.path.join(subdir_path, "LoopAnnotations.csv")
        with open(sub_loop_csv, "a") as f:
            f.writelines(loop_lines)

print("操作完成 ✅")
