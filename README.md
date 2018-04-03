# fluentd-logzio

An attempt to extend official `https://github.com/fluent/fluentd-kubernetes-daemonset` repo to send logs to logz.io

Also edit the fluentd config for kubernetes to change the logging property `log` into `message`. After talking to logz.io support, apparantly we need to set the raw log property as `message` for the live tail to work.

Refer to https://github.com/sajid2045/fluentd-logzio/blob/master/daemonset-logz.yaml for logz.io config options.
