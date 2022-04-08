#!/user/bin/bash

# usage: create_reports.bash my_experiment

log_dir=${1:-perf_logs}
name1=${2:-previous}
name2=${3:-current}

cp ~/performance_test_rt_cfg/reporter/compare_latest/report_compare_latest__intra_sste_prio90.yaml /tmp
cp ~/performance_test_rt_cfg/reporter/compare_latest/single.html /tmp

sed -i "s/name1/$name1/" /tmp/report_compare_latest__intra_sste_prio90.yaml
sed -i "s/name2/$name2/" /tmp/report_compare_latest__intra_sste_prio90.yaml

# Create reports
ros2 run performance_report reporter --log-dir $log_dir --configs /tmp/report_compare_latest__intra_sste_prio90.yaml