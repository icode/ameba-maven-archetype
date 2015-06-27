#!/bin/sh

P_DIR=$(cd `dirname $0`/..; pwd)

LIB=$P_DIR/lib/*

CP="$P_DIR":"$LIB"

TEMP_DIR=$P_DIR/temp

if [ ! -d "$TEMP_DIR" ]; then
mkdir "$TEMP_DIR"
fi

if [ -z "$JAVA_HOME" ]; then
  export JAVA=`which java`
else
  export JAVA="$JAVA_HOME/bin/java"
fi

./shutdown.sh

cd "$P_DIR"
echo `pwd`
$JAVA -cp $CP ameba.Ameba  & echo $! > $TEMP_DIR/pid
