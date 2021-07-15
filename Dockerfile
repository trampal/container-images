FROM scratch
ADD amzn2-container-raw-2.0.20210701.0-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-0b02afd67a4ca356cddc2458f97e9d05c0057c8be3ea2fd746f2cb8f8117ce4f.tar.gz" \
 && echo "3ff5c45e8ab1cc7d959cec030bfe3c669cf7a22bab24ec55aaf5a76aab1b67ed  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
