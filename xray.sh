#!/bin/sh
if [ ! -f UUID ]; then
  UUID="91cbfdee-11cf-4f90-86cf-21278ae475c9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

