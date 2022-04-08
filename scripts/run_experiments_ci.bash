#!/user/bin/bash

# usage: run_experiments_ci.bash experiments_dir

log_dir=${1:-.}

timestamp_name=${2:-$(date -d "today" +"%Y_%m_%d_%H_%M")}
ros2 run performance_report runner --log-dir $log_dir --test-name $timestamp_name --configs ~/performance_test_rt_cfg/runner/run_intra_sste_prio90.yaml