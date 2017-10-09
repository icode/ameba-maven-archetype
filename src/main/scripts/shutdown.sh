#!/bin/sh
C_DIR=`dirname $0`
P_DIR=$(cd $C_DIR/..; pwd)

TEMP_DIR=$P_DIR/temp
if [ -e "$TEMP_DIR/pid" ]; then
  cat $TEMP_DIR/pid | xargs kill
  rm -rf $TEMP_DIR/pid
fi