#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# @Time    : 2020/5/20 11:23 上午
# @Author  : Johny Zheng
# @Site    : 
# @File    : install.sh
# @Software: IntelliJ IDEA


set -e

export PGRDIR=$(cd `dirname $0`; pwd)
export WORKDIR=${PGRDIR}/../
source ${PGRDIR}/env.sh

export HELM_OPTS=" \
    --namespace ${NAMESPACE} \
    --set jmsCore.config.redis.host=${RELEASE_NAME}-redis-master\
    --set jmsCore.config.db.host=${RELEASE_NAME}-mariadb\
    "

helm upgrade --install ${HELM_OPTS} ${RELEASE_NAME}  -f ${WORKDIR}/values.yaml ${WORKDIR}
