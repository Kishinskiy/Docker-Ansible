FROM ubuntu

RUN  apt-get update && apt-get install -y python3-pip ansible git sshpass



RUN groupadd --gid 1000 jenkins \
  && useradd --uid 1000 --gid jenkins --shell /bin/bash --create-home --home /var/jenkins_home jenkins

WORKDIR /var/jenkins_home

RUN mkdir /.ansible && chown 1000:1000 /.ansible

ENTRYPOINT [ "bash" ]
