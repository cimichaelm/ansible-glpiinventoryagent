#!/bin/sh
# file: glpi-agent-batch.sh
# directions: run as root from crontab
#
defaults()
{
    tmpdir=/var/tmp
    logdir=/var/lib/glpi-agent
    logfile="${logdir}/cron.log"
    bindir=/usr/bin
    prog="glpi-agent"
    progopts="--wait=1800"
}


run_glpi_agent()
{
    $prog $progopts 2>&1 | tee $logfile
}


defaults


run_glpi_agent

exit 0
