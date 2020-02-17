#!/bin/bash

listServices() {
    service --status-all
}

# listServices

startService() {
    sudo service ${1} start
}

startService 'acpid'

stopService() {
    sudo service ${1} stop
}

stopService 'acpid'

restartService() {
    sudo service ${1} restart
}

restartService 'acpid'