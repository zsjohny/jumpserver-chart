#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# @Time    : 2020/5/6 1:57 下午
# @Author  : Johny Zheng
# @Site    : 
# @File    : predeploy.sh
# @Software: IntelliJ IDEA


set -e

export PGRDIR=$(cd `dirname $0`; pwd)
export WORKDIR=${PGRDIR}/../
source ${PGRDIR}/env.sh

kubectl create namespace ${NAMESPACE}