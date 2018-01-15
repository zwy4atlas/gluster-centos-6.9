# version: 0.0.1
FROM centos:6.9 
MAINTAINER zwy atlas "zwy@atlasdata.com"
RUN yum install -y centos-release-gluster && yum -y --enablerepo=centos-gluster*-test install glusterfs-server
