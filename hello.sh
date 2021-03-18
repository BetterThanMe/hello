#!/bin/bash


echo $$ > ${HOME}/.PID
# Set notification
turn_on_notify() {
	status=$(gsettings get org.gnome.desktop.screensaver show-notifications)
	# echo $status
	if [ $status = "false" ]; then
	        gsettings set org.gnome.desktop.screensaver show-notifications true
	fi	
}

# Hello
Message="Mot ngay vui ve nhe!"
turn_on_notify
notify-send "${Message}"

# waiting
wait_min() {
	sec=`expr $1 \* 60`
	sleep $sec
}

# Check 
Other_message="Ngay hnay the nao? Hi!"
Range_time=(21 3)  # range time to asking
Hour=`date "+%H"`
Minute=`date "+%M"`
# echo ${Hour}:${Minute}

if [ $Hour -ge ${Range_time[0]} ] || \
	[ $Hour -le  ${Range_time[1]} ]; then
		turn_on_notify
		notify-send "$Other_message"
else
	Minute=`expr $Minute + $Hour \* 60`
	Minute=`expr ${Range_time[0]} \* 60 - ${Minute}`
	wait_min $Minute
	turn_on_notify 
	notify-send "$Other_message"
fi


