# 2048demo-cicd-aliyun-ack

这是一个使用Github Action cicd到阿里云的ACK集群

项目基于gabrielecirulli/2048(https://github.com/gabrielecirulli/2048) and alexwhen/docker-2048(https://github.com/alexwhen/docker-2048)

# 如何使用

首先，您需要准备一个阿里云 ACK 集群以及拥有并管理该集群的 RMA 账号。如果您的实验环境在国内，可能需要准备阿里云镜像仓库服务 ACR，但如果您可以访问 Docker Hub，则无需准备。

如果需要配置ci参数，可以在.github/workflows/目录下找到 `.env`文件，里面包含了所有的配置参数。

以下是重要参数说明

- 如果您的 PUSH_REGISTRY_KIND 配置为 ali，则无需配置 Docker Hub 配置。反之，如果您配置了 docker，则无需配置 Aliyun ACK 配置。但是，如果您选择 all，则两者都需要配置。
- ACK_CLUSTER_ID 必须配置
- 根据需求配置“application config”、“svc config”和“Ingress config”。如果不熟悉配置，可以使用默认配置。注意，默认配置使用的是 NodePort，不使用 NGINX。请配置节点的公网IP。

除此之外你还需要更加自己的需求配置"Actions secrets and variables"
|参数|解释|
|---|---|
|ACCESS_KEY_ID | 阿里云账户ID，必须配置否则会导致集群无法连接 |
|ACCESS_KEY_SECRET | 阿里云账户ID秘钥，必须配置否则会导致集群无法连接 |
|ACR_USERNAME | ACR 仓库登入用户名，需要配置永久登入凭据，【选配】 |
|ACR_PASSWORD | ACR 仓库登入凭据，需要配置永久登入凭据，【选配】 |
|DOCKER_USERNAME| docker仓库登入用户名 【选配】 |
|DOCKER_PASSWORD| docker仓库登入凭据 【选配】 |
