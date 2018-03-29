FROM centos
MAINTAINER Adam Johnson

# install wskdeploy
RUN curl -L -O https://github.com/apache/incubator-openwhisk-wskdeploy/releases/download/0.9.1/wskdeploy-0.9.1-linux-amd64.tgz
RUN tar -xzvf wskdeploy-0.9.1-linux-amd64.tgz

#install bx cli
RUN curl -O -L  https://clis.ng.bluemix.net/download/bluemix-cli/0.6.5/linux64
RUN tar -xzvf linux64
RUN ./Bluemix_CLI/install_bluemix_cli
RUN bx plugin install cloud-functions
