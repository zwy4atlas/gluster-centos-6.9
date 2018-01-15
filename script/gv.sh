mkdir /var/log/messages\
gluster volume create gv0 replica 3 \
server1:/bricks/brick1/gv0 server2:/bricks/brick1/gv0 server3:/bricks/brick1/gv0 force \
&& gluster volume start gv0\
&& mount -t glusterfs server1:/gv0 /mnt\
&& for i in `seq -w 1 100`; do cp -rp /var/log/messages /mnt/copy-test-$i; done
