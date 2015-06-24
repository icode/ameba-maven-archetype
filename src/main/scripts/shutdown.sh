#!/bin/sh

P_DIR=$(cd `pwd`/..; pwd)

TEMP_DIR=$P_DIR/temp

cat $TEMP_DIR/pid | xargs kill
rm -rf $TEMP_DIR/pid