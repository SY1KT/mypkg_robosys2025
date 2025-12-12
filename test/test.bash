#!/bin/bash
#SPDX-FileCopyrightText: 2025 Tatsunori Kanno
#SPDX-License-Identifier: BSD-3-Clause

dir=/home/tatsunori/ros2_ws/src/mypkg/test
[ "$1" != "/home/tatsunori/ros2_ws/src/mypkg/test" ] && dir="$1"

cd $dir/ros2_ws
colcon build
source $dir/.bashrc
timeout 10 ros2 launch mypkg talk_listen.launch.py > /tmp/mypkg.log

cat /tmp/mypkg.log |
grep 'Listen: 10'
