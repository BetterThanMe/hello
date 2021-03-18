pidtree() {
  echo -n $1 " "
  for _child in $(ps -o pid --no-headers --ppid $1); do
    echo -n $_child " "
  done
}

kill_pid() {
	while [ "$#" -gt "0" ]
	do
		kill $1
		shift
	done
}
read PID < "${HOME}/.PID"
kill_pid `pidtree $PID`

