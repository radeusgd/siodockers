#!/bin/bash
cat /spr4g/resolv.conf > /etc/resolv.conf
whoami
echo "Starting worker"
sudo -u appuser -E bash -c "HOME=/spr4g/ ./supervisor.sh startfg"
echo "Worker stopped."
