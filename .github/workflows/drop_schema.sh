#!/bin/bash
# get snowsql
apt update
apt-get install -y curl unzip

curl -O https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/1.2/linux_x86_64/snowsql-1.2.21-linux_x86_64.bash
SNOWSQL_DEST=/root/bin SNOWSQL_LOGIN_SHELL=/root/.profile bash ./snowsql-1.2.21-linux_x86_64.bash
alias snowsql=/root/bin/snowsql

# drop schema
branch_name="$(echo $BRANCH_NAME | sed -e 's/refs\/heads//g' | sed -e 's/\//_/g')"

sql="drop schema ${branch_name}_raw;"
/root/bin/snowsql -q "${sql}" 

sql="drop schema ${branch_name}_staging;"
/root/bin/snowsql -q "${sql}" 
