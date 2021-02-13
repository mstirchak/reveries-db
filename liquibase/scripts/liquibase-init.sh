#!/usr/bin/env bash
sleep 15
/opt/liquibase/liquibase --defaultsFile=/liquibase.properties update
echo "liquibase-init.sh: complete"