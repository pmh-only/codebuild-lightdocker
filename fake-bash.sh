#!/bin/ash

ps | grep -v grep | grep dockerd 1>/dev/null
if [ $? -ne 0 ]; then
  nohup dockerd 1>/dev/null 2>&1 &
  echo "=====[lightdocker] docker started====="

  while true; do
    sleep 0.1
    docker ps 1>/dev/null 2>&1
    if [ $? -eq 0 ]; then
      echo "[lightdocker] docker ready."
      break
    fi
  done
fi

ash "$@"
