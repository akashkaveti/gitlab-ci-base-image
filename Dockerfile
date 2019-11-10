FROM lwolf/helm-kubectl-docker:v1.15.1-v2.14.3
ENV PERM_PACKAGES="bash jq curl unzip sudo"
ENV YQ_VERSION="2.2.1"

RUN apk --no-cache add ${PERM_PACKAGES} \
 && curl -LO https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/yq_linux_amd64 \
 && mv yq_linux_amd64 /usr/bin/yq \
 && chmod 755 /usr/bin/yq