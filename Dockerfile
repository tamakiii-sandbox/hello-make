FROM amazonlinux:2022.0.20221207.4

RUN dnf update -y && \
    dnf install -y \
      man \
      which \
      make \
      less \
      yum-utils \
      git \
      wget \
      gcc \
      automake \
      gettext-devel \
      texinfo \
      tar \
      && \
    dnf clean all

# RUN yum update -y && \
#     yum install -y \
#       gettext-devel \
#       tar \
#       && \
#     yum clean all

# RUN amazon-linux-extras enable epel && \
#     yum clean metadata && \
#     yum install -y epel-release && \
#     yum install -y \
#       autoconf \
#       && \
#     yum clean all

COPY dependency/mirror/make /var/lib/mirror/make
