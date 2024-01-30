#!/bin/bash
#
# Copyright (C) 2023 Intel Corporation.
#
# SPDX-License-Identifier: Apache-2.0
#

# bash_cmd="./launch-pipeline.sh 
  # $PIPELINE_EXEC_PATH $INPUTSRC $USE_ONEVPL $RENDER_MODE $RENDER_PORTRAIT_MODE"

PIPELINE_EXEC_PATH=$1
INPUTSRC=$2
USE_ONEVPL=$3
RENDER_MODE=$4
RENDER_PORTRAIT_MODE=$5
WINDOW_WIDTH=$6
WINDOW_HEIGHT=$7
DETECTION_THRESHOLD=$8
BARCODE=$9

# Obtaining codec_type (avc or hevc)
is_avc=`gst-discoverer-1.0 "$INPUTSRC" | grep -i h.264 | wc -l`

echo "inside launch-pipeline.sh and the command is ./$PIPELINE_EXEC_PATH $INPUTSRC $USE_ONEVPL $RENDER_MODE $RENDER_PORTRAIT_MODE $is_avc $WINDOW_WIDTH $WINDOW_HEIGHT $DETECTION_THRESHOLD" "$BARCODE"
./"$PIPELINE_EXEC_PATH" "$INPUTSRC" "$USE_ONEVPL" "$RENDER_MODE" "$RENDER_PORTRAIT_MODE" "$is_avc" "$WINDOW_WIDTH" "$WINDOW_HEIGHT" "$DETECTION_THRESHOLD" "$BARCODE"