echo "($(gdate -d "`date +%Y%m%d` 19:00:00" "+%s") - $(gdate -d "`date "+%Y%m%d %H:%M:%S"`" "+%s")) / 3600" | bc
