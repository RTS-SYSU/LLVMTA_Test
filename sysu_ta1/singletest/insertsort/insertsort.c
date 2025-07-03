/*

  This program is part of the TACLeBench benchmark suite.
  Version V 1.x

  Name: insertsort

  Author: Sung-Soo Lim

  Function: Insertion sort for 10 integer numbers.
     The integer array insertsort_a[  ] is initialized in main function.
     Input-data dependent nested loop with worst-case of
     (n^2)/2 iterations (triangular loop).

  Source: MRTC
          http://www.mrtc.mdh.se/projects/wcet/wcet_bench/insertsort/insertsort.c

  Changes: a brief summary of major functional changes (not formatting)

  License: may be used, modified, and re-distributed freely, but
           the SNU-RT Benchmark Suite must be acknowledged

*/

/*
  This program is derived from the SNU-RT Benchmark Suite for Worst
  Case Timing Analysis by Sung-Soo Lim
*/


/*
  Forward declaration of functions
*/
void insertsort_initialize( unsigned int *array );
void insertsort_init( void );
int insertsort_return( void );
void insertsort_main( void );
int main( void );

/*
  Declaration of global variables
*/
unsigned int insertsort_a[ 11 ];
int insertsort_iters_i, insertsort_min_i, insertsort_max_i;
int insertsort_iters_a, insertsort_min_a, insertsort_max_a;

/*
  Initialization- and return-value-related functions
*/

void insertsort_initialize( unsigned int *array )
{

  register volatile int i;
  for ( i = 0; i < 11; i++ )
    insertsort_a[ i ] = array[ i ];

}


void insertsort_init()
{
  unsigned int a[ 11 ] = {0, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2};

  insertsort_iters_i = 0;
  insertsort_min_i = 100000;
  insertsort_max_i = 0;
  insertsort_iters_a = 0;
  insertsort_min_a = 100000;
  insertsort_max_a = 0;

  insertsort_initialize( a );
}

int insertsort_return()
{
  int i, returnValue = 0;

  for ( i = 0; i < 11; i++ )
    returnValue += insertsort_a[ i ];

  return ( returnValue + ( -65 ) ) != 0;
}


/*
  Main functions
*/


void insertsort_main()
{
  int  i, j, temp;
  i = 2;

  insertsort_iters_i = 0;

  for(int i=1;i<=9;i++){
    for(int j=1;j<=9;j++){
      temp = insertsort_a[ j ];
      insertsort_a[ j ] = insertsort_a[ j - 1 ];
      insertsort_a[ j - 1 ] = temp;
    }
  }
}

int main( void )
{
  insertsort_init();
  insertsort_main();
  // return ( insertsort_return() );
  return 0;
}

