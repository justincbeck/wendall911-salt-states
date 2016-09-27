#!/bin/bash
<%include file="/shell/bootstrap_functions.sh"/>\
<%namespace name="users" file="/includes/users.mako"/>\
<%namespace name="conf" file="/includes/conf.mako"/>\
<%namespace name="repos" file="/includes/repos.mako"/>\
<%namespace name="hosts" file="/includes/hosts.mako"/>\

${hosts.host_file(self.attr.machine_name, self.attr.domain, self.attr.ip_addr)}
hostname ${self.attr.machine_name}.${self.attr.domain}

${repos.fedora()}
dnf install -y salt-minion

${conf.saltminion()}
${users.wendallc()}

service salt-minion start
