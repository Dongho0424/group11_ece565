#benchmark bzip
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache -b bzip --maxinsts=10000000
cp -r ./m5out/ ./result/base/bzip

#benchmark gcc
./build/ECE565-ARM/gem5.opt configs/spec/spec_se.py --cpu-type ArmMinorCPU --l1d_size=64kB --l1i_size=64kB --caches --l2cache -b gcc --maxinsts=10000000
cp -r ./m5out/ ./result/base/gcc
