<%def name="epel()">\
yum install -y http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
</%def>\
<%def name="fedora()">\
dnf copr enable kc1212/syncthing
</%def>\
