# 2048demo-with-Alibaba-cloud-CI-CD-Pipeline

This is a project that uses github action cicd to Alibaba Cloud ACK

Base on gabrielecirulli/2048(https://github.com/gabrielecirulli/2048) and alexwhen/docker-2048(https://github.com/alexwhen/docker-2048)


# How to use
First, you need to prepare an Alibaba Cloud ACK cluster and an RMA account that owns and manages this cluster. If your experimental environment is in China, you may need to prepare Alibaba Cloud Image Repository Service ACR, but if you can access Docker Hub, you don't need to prepare it.

If you need to configure pipeline parameters, you can find the `.env` file in the .github/workflows/ directory, which contains all the configuration parameters.

The following are important parameter descriptions
- If your PUSH_REGISTRY_KIND is configured as "ali", then you do not need to configure "Docker Hub config". Conversely, if you configure "docker", then you do not need to configure "Aliyun ACK config". However, if you choose "all", then you need to configure both.
- ACK_CLUSTER_ID must be configured
- Configure "application config", "svc config", and "Ingress config" according to your needs. If you are not familiar with the configuration, you can use the default. Note that the default configuration uses NodePort and does not use NGINX. Please configure the node IP.

You also need to configure "Actions secrets and variables" according to your requirements.

| Parameter | Explanation |
|---|---|
| `ACCESS_KEY_ID` | Alibaba Cloud account ID. **Required**, otherwise the cluster will fail to connect. |
| `ACCESS_KEY_SECRET` | Secret key for the Alibaba Cloud account ID. **Required**, otherwise the cluster will fail to connect. |
| `ACR_USERNAME` | Username for Alibaba Container Registry (ACR) login. Need configure for permanent login credentials. 【Optional】 |
| `ACR_PASSWORD` | Password for Alibaba Container Registry (ACR) login. Need configure for permanent login credentials. 【Optional】 |
| `DOCKER_USERNAME` | Username for Docker registry login. 【Optional】 |
| `DOCKER_PASSWORD` | Password for Docker registry login. 【Optional】 |