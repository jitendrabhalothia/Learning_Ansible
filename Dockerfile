FROM ubuntu:16.04
LABEL maintainer="Jitendra Singh"

# Install Dependencies and Packages

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
	python-software-properties \
	software-properties-common \
	rsyslog systemd sudo vim \
    && rm -Rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean

# Installing Ansible

RUN add-apt-repository -y ppa:ansible/ansible \
  && apt-get update \
  && apt-get install -y --no-install-recommends \
     ansible \
  && rm -rf /var/lib/apt/lists/* \
  && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
  && apt-get clean


