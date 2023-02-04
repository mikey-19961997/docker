FROM alpine:3
ARG user=mikey
ARG password=ravi
ENV database=mysql
ENV rockstar=mikey
RUN echo ${user}
CMD ["sleep","1d"]