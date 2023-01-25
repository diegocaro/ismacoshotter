# for unix epoch timestamp
DATEFORMAT="%Y-%m-%d %H:%M:%S%z"
INTERVAL=1
CMD_PROCESSES="ps aux "
CMD_ISTATS="istats --no-graphs"

while true; do
    DATETIME="%%%	$(date +"$DATEFORMAT")"
    echo "$DATETIME	processes"
    eval ${CMD_PROCESSES}
    echo "$DATETIME	istats"
    eval ${CMD_ISTATS}
    sleep ${INTERVAL}
done