#!/bin/bash

# constants
# 10:00:00 --> 36000
# 19:00:00  --> 68400

# logic
# current < 36000 then 출근 전
# current > 68400 then 근무 중
# current < 68400 then 퇴근

# param
# go_work:number 출근시간
# leave_work:number 퇴근시간
# current_time:number 현재시간

go_work=36000
leave_work=68400

current_hour=$(date +%H)
current_min=$(date +%M)
current_sec=$(date +%S)

current_time_hour=$(($current_hour * 3600))
current_time_min=$(($current_min * 60))
current_time=$(($current_time_hour + $current_time_min + $current_sec))

# test code
# test_time= 15:08:00
# test_time_hour=$((15 * 3600))
# test_time_min=$((54 * 60))
# test_time_sec=00
# test_time=$(($test_time_hour + $test_time_min + $test_time_sec))
# echo ${test_time}

# 남은 시간 계산
remain_time=$(($leave_work - $current_time))

echo :::🕰 ::: $(date "+%Y/%m/%d %H:%M:%S")

remain_time_hour=$(($remain_time / 3600))
diff=$(($remain_time_hour * 3600))
remain_time=$(($remain_time - $diff))
remain_time_min=$(($remain_time / 60))
diff=$(($remain_time_min * 60))
remain_time_sec=$(($remain_time - $diff))

if [ ${current_time} -lt ${go_work} ]; then
    echo :::😪::: Sleeping...
elif [ ${current_time} -gt ${leave_work} ]; then
    echo :::💻::: Work...
    if [ ${remain_time_min} -lt 10 ]; then
        remain_time_min="0${remain_time_min}"
    fi
    if [ ${remain_time_sec} -lt 10 ]; then
        remain_time_sec="0${remain_time_sec}"
    fi
    echo :::😵::: 퇴근까지 ${remain_time_hour}시간 ${remain_time_min}분 ${remain_time_sec}초 남았어요.
elif [ ${current_time} -lt ${leave_work} ]; then
    echo :::🎉::: Leave Work
fi