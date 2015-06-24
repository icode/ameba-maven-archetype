#!/bin/sh

P_DIR=$(cd `pwd`/..; pwd)

LIB=$P_DIR/lib

for i in $LIB/*.jar;
do CLASSPATH="$i":"$CLASSPATH";
done

CLASSPATH="$P_DIR":"$CLASSPATH"

TEMP_DIR=$P_DIR/temp

if [ ! -d "$TEMP_DIR" ]; then
mkdir "$TEMP_DIR"
fi

if [ -z "$JAVA_HOME" ]; then
  export JAVA=`which java`
else
  export JAVA="$JAVA_HOME/bin/java"
fi

$JAVA -cp $CLASSPATH ameba.Ameba & echo $! > $TEMP_DIR/pid
