###
 # @Author: your name
 # @Date: 2020-07-23 17:52:01
 # @LastEditTime: 2020-07-23 17:52:01
 # @LastEditors: your name
 # @Description: In User Settings Edit
 # @FilePath: /mcu_framework/build.sh
### 
#!/bin/bash

MAKE_DIR=./project/$1/gcc

cd ${MAKE_DIR}

make $2