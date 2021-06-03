FROM scratch
ADD amzn-container-minimal-2018.03.0.20210521.1-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-dc5d92c927a9f79aab7658e5c05df877dd40282d7bf9b4b11a5eb11b225cb7ad.tar.gz" \
 && echo "03509f1ca8f0593cf761a9fda3dc71baf0f45752a0d8908a04ccd9937bd1ddfc  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
