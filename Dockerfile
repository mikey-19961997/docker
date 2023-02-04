FROM alpine:3
ARG user=mikey
ARG group=ravi
ENV database=mysql
ENV rockstar=mikey
RUN groupadd -g ${gid} ${group} \
    && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}

USER ${user}
CMD ["sleep","1d"]