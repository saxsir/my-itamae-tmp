FROM ubuntu:16.04

RUN set -eux; \
    apt-get update && \
    apt-get install -yq build-essential curl ruby ruby-dev && \
    gem i bundler --no-ri --no-rdoc

RUN useradd vagrant
RUN mkdir -p /root/my-itamae
COPY . /root/my-itamae
WORKDIR /root/my-itamae

ENTRYPOINT ["make", "-C", "/root/my-itamae"]
