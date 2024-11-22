# Add GCC 8.3.0 to PATH
# export PATH=/package/gcc/8.3.0/bin:$PATH; export LD_LIBRARY_PATH=/package/gcc/8.3.0/lib64

# BENCHMARKS - system.l2.overallMissRate::total
# List of benchmarks
rm -r m5out*
BENCHMARKS=("sjeng" "leslie3d" "lbm" "astar" "milc" "namd")
BENCHMARKS=("astar")
# Loop through each benchmark
for BENCHMARK in "${BENCHMARKS[@]}"
do
    # Run with compression
    ./build/ECE565-ARM/gem5.opt configs/project/baseline.py -b $BENCHMARK --cpu-type=MinorCPU --maxinsts=1000000 --l1d_size=64kB --l1i_size=64kB --l1d_assoc=2 --l1i_assoc=2 --caches --l2cache --l2_size=4MB --mem-size=4GB --compression
    mv m5out m5out_${BENCHMARK}_TRUE

    # Run without compression
    ./build/ECE565-ARM/gem5.opt configs/project/baseline.py -b $BENCHMARK --cpu-type=MinorCPU --maxinsts=1000000 --l1d_size=64kB --l1i_size=64kB --l1d_assoc=2 --l1i_assoc=2 --caches --l2cache --l2_size=4MB --mem-size=4GB 
    mv m5out m5out_${BENCHMARK}_FALSE
done