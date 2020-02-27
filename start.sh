#!/bin/sh -xe

SERVICE=${1:-server}

case $SERVICE in
  server)
    java -jar ./leshan-server-demo-1.0.0-SNAPSHOT-jar-with-dependencies.jar ;;
  bootstrap|bsserver)
    java -jar ./leshan-bsserver-demo.jar ;;
  *)
    echo "Usage: <server|bootstrap>"
    exit 1
esac

