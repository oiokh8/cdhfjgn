#!/bin/sh
if [ ! -f UUID ]; then
  UUID="de99e7a8-dd1b-4efc-be1b-1a0041c4bae3"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

