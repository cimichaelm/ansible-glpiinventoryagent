#!/bin/sh
# file: glpi-agent-install.sh
#
defaults()
{
    tmpdir=/var/tmp
    logdir=/var/tmp/log
    logfile="${logdir}/install.log"
    ver=1.4
    prog="glpi-agent-${ver}-linux-installer.pl"
    progopts="--install -s $server -l $invdir --type=all"
}

# create_directory if not existing
create_directory()
{
    Ldir=$1
    if [ ! -d ${Ldir} ]; then
        mkdir -p ${Ldir}
    fi
}

# setup
setup()
{

    create_directory $logdir
}


install_glpi_agent()
{

    sudo perl $prog $progopts | tee $logfile
}


server=$0
invdir=$1

defaults

setup

install_glpi_agent

exit 0
