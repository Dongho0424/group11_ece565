for benchmark in lbm leslie3d #astar milc mcf sjeng namd 
do 
    OUTPUT_DIR="results/comp_gcp/$benchmark/"

    # Check OUTPUT_DIR existence
    if [[ !(-d "$OUTPUT_DIR") ]]; then
        mkdir -p $OUTPUT_DIR
    fi
    SCRIPT_OUT=$OUTPUT_DIR/runscript_file.log

    ./build/ECE565-ARM/gem5.opt -d $OUTPUT_DIR configs/spec/spec_se.py \
    --cpu-type=MinorCPU --l1d_size=64kB --l1i_size=64kB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=4 \
    --caches --l2cache --l2_size=4MB --mem-size=4GB --maxinsts=10000000 -b $benchmark\
    --l2_compressor --gcp --gcp_inc 1 --gcp_dec 2 \
    >> $SCRIPT_OUT

    OUTPUT_DIR="results/comp/$benchmark/"

    # Check OUTPUT_DIR existence
    if [[ !(-d "$OUTPUT_DIR") ]]; then
        mkdir -p $OUTPUT_DIR
    fi
    SCRIPT_OUT=$OUTPUT_DIR/runscript_file.log

    ./build/ECE565-ARM/gem5.opt -d $OUTPUT_DIR configs/spec/spec_se.py \
    --cpu-type=MinorCPU --l1d_size=64kB --l1i_size=64kB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=4 \
    --caches --l2cache --l2_size=4MB --mem-size=4GB --maxinsts=10000000 -b $benchmark\
    --l2_compressor \
    >> $SCRIPT_OUT

    OUTPUT_DIR="results/never/$benchmark/"

    # Check OUTPUT_DIR existence
    if [[ !(-d "$OUTPUT_DIR") ]]; then
        mkdir -p $OUTPUT_DIR
    fi
    SCRIPT_OUT=$OUTPUT_DIR/runscript_file.log

    ./build/ECE565-ARM/gem5.opt -d $OUTPUT_DIR configs/spec/spec_se.py \
    --cpu-type=MinorCPU --l1d_size=64kB --l1i_size=64kB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=4 \
    --caches --l2cache --l2_size=4MB --mem-size=4GB --maxinsts=10000000 -b $benchmark\
    >> $SCRIPT_OUT
done

