#!/bin/sh

set -e

FLUENTD_CONF=fluent.conf

if [[ -z ${LOGZIO_URL} ]] ; then
   sed -i  '/LOGZIO_URL/d' /fluentd/etc/${FLUENTD_CONF}
fi

if [[ -z ${LOGZIO_TOKEN} ]] ; then
   sed -i  '/LOGZIO_TOKEN/d' /fluentd/etc/${FLUENTD_CONF}
fi

if [[ -z ${LOGZIO_TYPE} ]] ; then
   sed -i  '/LOGZIO_TYPE/d' /fluentd/etc/${FLUENTD_CONF}
fi

cat /fluentd/etc/${FLUENTD_CONF}

exec fluentd -c /fluentd/etc/${FLUENTD_CONF} -p /fluentd/plugins ${FLUENTD_OPT}
