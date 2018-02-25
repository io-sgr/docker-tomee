#! /bin/sh

export CATALINA_OPTS="$CATALINA_OPTS -server"
export CATALINA_OPTS="$CATALINA_OPTS -Xms512m"
export CATALINA_OPTS="$CATALINA_OPTS -Xmx2048m"

if [ -z "$SERVER_ID" ]; then
	export SERVER_ID="server"
fi

if [ -z "$SERVER_HOSTNAME" ]; then
	export SERVER_HOSTNAME="localhost"
fi

export JAVA_OPTS="$JAVA_OPTS -Dfile.encoding=UTF8 -Dserver.id=$SERVER_ID -Dserver.hostname=$SERVER_HOSTNAME"
