#!/bin/sh
C_DIR=`dirname $0`
P_DIR=$(cd $C_DIR/..; pwd)

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

CAT=`which cat`
GREP=`which egrep`
TR=`which tr`

VM_OPTIONS=""
vm_opts_file="$C_DIR/ameba.vmoptions"

if [ -r "$vm_opts_file" ]; then
  VM_OPTIONS=`"$CAT" "$vm_opts_file" | "$GREP" -v "^#.*" | "$TR" '\n' ' '`
fi

cd "$P_DIR"

$JAVA -cp $CP \
 $VM_OPTIONS \
 ameba.Ameba  & echo $! > $TEMP_DIR/pid