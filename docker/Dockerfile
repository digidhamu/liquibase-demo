FROM oraclelinux:7

RUN groupadd -g 1000 hunter
RUN useradd -m -l -u 1000 -g hunter -s /bin/bash hunter
 
# Install GNUPG for package vefification and WGET for file download
RUN yum -y update \
    && yum -y install gnupg wget

RUN mkdir -p /tools/jdk1.8.0_221
RUN chown -R hunter:hunter /tools

WORKDIR /tools    

COPY jdk1.8.0_271  /tools/jdk1.8.0_271/

ENV JAVA_HOME /tools/jdk1.8.0_271/
ENV PATH="$PATH:/tools/jdk1.8.0_271/bin"

# Make /liquibase directory and change owner to liquibase
RUN mkdir /liquibase && chown hunter /liquibase
WORKDIR /liquibase

# Latest Liquibase Release Version
ARG LIQUIBASE_VERSION=4.2.0

# Download, verify, extract
ARG LB_SHA256=c70f40bfefabca6050ca373787be8f306f883887e52f9db1222ed0f4c37b4276
RUN set -x \
  && wget -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" \
  && echo "$LB_SHA256  liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - \
  && tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz

# Setup GPG
RUN GNUPGHOME="$(mktemp -d)"

# Copy Oracle JDBC libraries from local build folder
COPY ojdbc8.jar /liquibase/lib/.

COPY --chown=hunter:hunter docker-entrypoint.sh /liquibase/
COPY --chown=hunter:hunter liquibase.docker.properties /liquibase/

RUN chmod 0755 /liquibase/docker-entrypoint.sh

VOLUME /liquibase/classpath
VOLUME /liquibase/changelog

USER hunter

ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
CMD ["--help"]
