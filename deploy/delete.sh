#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# @Time    : 2020/5/20 11:41 上午
# @Author  : Johny Zheng
# @Site    : 
# @File    : delete.sh
# @Software: IntelliJ IDEA

set -e

export PGRDIR=$(cd `dirname $0`; pwd)
export WORKDIR=${PGRDIR}/../
source ${PGRDIR}/env.sh

export HELM_OPTS=" \
    --namespace ${NAMESPACE} \
    "

helm delete ${RELEASE_NAME} ${HELM_OPTS}