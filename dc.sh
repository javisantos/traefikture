#!/bin/bash

COMMAND="docker-compose -f docker-compose.yml"
for d in services/*; do
    
	if [ -e ${d}/docker-compose.yml ]; then
        echo "Service found: ${d}"
        COMMAND="${COMMAND} -f ${d}/docker-compose.yml"
	fi;
done

echo "Running ${COMMAND} $@"
eval "${COMMAND} $@"