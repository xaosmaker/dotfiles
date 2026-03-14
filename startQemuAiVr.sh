#!/bin/bash
FILE_PATH=$HOME/realprojects
exec qemu-system-x86_64 \
   -enable-kvm \
   -m 10G \
   -cpu host \
   -hda $HOME/qemu/archAi.qcow2 \
   -smp 6 \
   -display none \
   -virtfs local,path=$FILE_PATH,mount_tag=hostshare,security_model=passthrough,id=hostshare \
   -netdev user,id=net0,hostfwd=tcp::2222-:22 \
   -device virtio-net-pci,netdev=net0 \
   -daemonize
