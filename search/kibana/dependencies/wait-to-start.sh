#!/bin/bash
echo $WAIT_COMMAND
echo $WAIT_START_CMD

is_ready() {
    eval "$WAIT_COMMAND"
}

# wait until is ready
i=0
while ! is_ready; do
    i=`expr $i + 1`
    if [ $i -ge $WAIT_LOOPS ]; then
        echo "$(date) - Elasticsearch cluster is still not ready after $(WAIT_LOOPS) tries - giving up"
        exit 1
    fi
    echo "$(date) - Waiting for Elasticsearch cluster to be ready"
    sleep $WAIT_SLEEP
done

#start the script
exec $WAIT_START_CMD