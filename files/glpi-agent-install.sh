#!/bin/sh
# file: glpi-agent-install.sh
#
defaults()
{
    tmpdir=/var/tmp
    logdir=/var/tmp/log
    logfile="${logdir}/install.log"
    ver=1.12
    prog="glpi-agent-${ver}-linux-installer.pl"
    # installtype: typical, network, all
    installtype="typical"
    # -v
    progopts="--install --type=${installtype} --no-httpd"
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
    Lserver=$1
    Linvdir=$2
    sudo perl $prog $progopts -s $Lserver -l $Linvdir | tee $logfile
}


server=$1
invdir=$2

defaults

setup

install_glpi_agent $server $invdir

exit 0
