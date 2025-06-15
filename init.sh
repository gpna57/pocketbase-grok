#!/bin/sh
/pb/pocketbase superuser upsert gabrielpablonew@gmail.com gabriel2002
exec /pb/pocketbase serve --http=0.0.0.0:8080 --httpDataDir=/pb/pb_data
