# taireum-docker
https://github.com/taireum/go-taireum Taireum 一种兼容以太坊的企业级分布式账本与智能合约平台（容器）

## **docker相关** 

todo


## **导入** 
镜像文件基于centos 7.4 进行制作，工作目录为/opt/build

1.合并压缩卷

    cat ccc_0.0.1.docker.z* >ccc-imag.zip
    unzip ccc-imag.zip
    
2.导入docker

    docker load <ccc_0.0.1.tar.gz

3.下载geth客户端

    cd build
    git clone https://github.com/taireum/go-taireum

4.启动

     docker-compose -f geth.yaml up -d


## **细节** 
todo


    
