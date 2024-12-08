#1 mcf
#mcf_never
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB -b mcf --maxinsts=10000000
mkdir -p ./benchmark2/mcf_never
cp -r ./m5out/ ./benchmark2/mcf_never

#mcf_always
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB --l2_compressor -b mcf --maxinsts=10000000
mkdir -p ./benchmark2/mcf_always
cp -r ./m5out/ ./benchmark2/mcf_always

#mcf_adaptive
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB --l2_compressor --gcp -b mcf --maxinsts=10000000
mkdir -p ./benchmark2/mcf_adaptive
cp -r ./m5out/ ./benchmark2/mcf_adaptive

#2 milc
#milc_never
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB -b milc --maxinsts=10000000
mkdir -p ./benchmark2/milc_never
cp -r ./m5out/ ./benchmark2/milc_never

#milc_always
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB --l2_compressor -b milc --maxinsts=10000000
mkdir -p ./benchmark2/milc_always
cp -r ./m5out/ ./benchmark2/milc_always

#milc_adaptive
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB --l2_compressor --gcp -b milc --maxinsts=10000000
mkdir -p ./benchmark2/milc_adaptive
cp -r ./m5out/ ./benchmark2/milc_adaptivemc


#3 leslid3d

#leslid3d_never
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB -b leslid3d --maxinsts=10000000
mkdir -p ./benchmark2/leslid3d_never
cp -r ./m5out/ ./benchmark2/leslid3d_never

#leslid3d_always
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB --l2_compressor -b leslid3d --maxinsts=10000000
mkdir -p ./benchmark2/leslid3d_always
cp -r ./m5out/ ./benchmark2/leslid3d_always

#leslid3d_adaptive
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB --l2_compressor --gcp -b leslid3d --maxinsts=10000000
mkdir -p ./benchmark2/leslid3d_adaptive
cp -r ./m5out/ ./benchmark2/leslid3d_adaptive

#4 lbm

#lbm_never
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB -b lbm --maxinsts=10000000
mkdir -p ./benchmark2/lbm_never
cp -r ./m5out/ ./benchmark2/lbm_never

#lbm_always
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB --l2_compressor -b lbm --maxinsts=10000000

mkdir -p ./benchmark2/lbm_always
cp -r ./m5out/ ./benchmark2/lbm_always

#lbm_adaptive
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB --l2_compressor --gcp -b lbm --maxinsts=10000000
mkdir -p ./benchmark2/lbm_adaptive
cp -r ./m5out/ ./benchmark2/lbm_adaptive

#5 sjeng

#sjeng_never
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB -b sjeng --maxinsts=10000000
mkdir -p ./benchmark2/sjeng_never
cp -r ./m5out/ ./benchmark2/sjeng_never

#sjeng_always
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB --l2_compressor -b sjeng --maxinsts=10000000
mkdir -p ./benchmark2/sjeng_always
cp -r ./m5out/ ./benchmark2/sjeng_always

#sjeng_adaptive
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB --l2_compressor --gcp -b sjeng --maxinsts=10000000
mkdir -p ./benchmark2/sjeng_adaptive
cp -r ./m5out/ ./benchmark2/sjeng_adaptive

#6 astar

#astar_never
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB -b astar --maxinsts=10000000
mkdir -p ./benchmark2/astar_never
cp -r ./m5out/ ./benchmark2/astar_never

#astar_always
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB --l2_compressor -b astar --maxinsts=10000000
mkdir -p ./benchmark2/astar_always
cp -r ./m5out/ ./benchmark2/astar_always

#astar_adaptive
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB --l2_compressor --gcp -b astar --maxinsts=10000000
mkdir -p ./benchmark2/astar_adaptive
cp -r ./m5out/ ./benchmark2/astar_adaptive

#7 namd

#namd_never
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB -b namd --maxinsts=10000000
mkdir -p ./benchmark2/namd_never
cp -r ./m5out/ ./benchmark2/namd_never

#namd_always
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB --l2_compressor -b namd --maxinsts=10000000
mkdir -p ./benchmark2/namd_always
cp -r ./m5out/ ./benchmark2/namd_always

#namd_adaptive
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache --l2_size=4MB --l2_compressor --gcp -b namd --maxinsts=10000000
mkdir -p ./benchmark2/namd_adaptive
cp -r ./m5out/ ./benchmark2/namd_adaptive

