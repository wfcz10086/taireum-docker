#!/bin/bash 
echo "导入系统环境变量"

source /root/.bash_profile
cd go-taireum

if [ ! -f "/opt/master.sh" ];then
    echo "编译geth客户端"
    build/env.sh go run build/ci.go install
    cd tai/api/

    echo "启动ccc控制台"
    yum -y install gcc+ gcc-c++
    npm install 
    node bin/www &
    sed -i 's/go-ethereum/go-taireum/g' lib/init_account.sh
    echo "安装智能合约"
    node lib/deploy.js&

    cd client
    npm install
    npm  run dev&


    cd ..
    node lib/Schedule.js

else

    cd tai/api/

    echo "启动ccc控制台"
    yum -y install gcc+ gcc-c++
    npm install 
    node bin/www &

    cd client
    npm install
    npm  run dev&
    chmod 755 /opt/master.sh
    /opt/master.sh
fi

