FROM tim03/scm
MAINTAINER Chen, Wenli <chenwenli@chenwenli.com>
RUN apt-get -qq update && apt-get install -qqy --no-install-recommends \
		autoconf \
		automake \
		bzip2 \
		g++ \
		gcc \
		libc6-dev \
		libglib2.0-dev \
		make \
		patch \
		dirmngr \
        && apt-get -y autoremove \
        && apt-get clean \
	&& rm -rf /var/lib/apt/lists/*
