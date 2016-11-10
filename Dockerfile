FROM python:latest

WORKDIR /root
ADD ./install_aws-cli.sh /tmp/install_aws-cli.sh
#needed for eb cli
ENV PATH ~/.local/bin:$PATH

RUN apt-get update && \
    apt-get install -y unzip groff git && \
    /bin/bash /tmp/install_aws-cli.sh && \
    rm /tmp/install_aws-cli.sh && \
    rm -r awscli-bundle && \
    rm awscli-bundle.zip && \
    pip install --upgrade --user awsebcli
