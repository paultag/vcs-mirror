# Base image
#
# VERSION   0.1
FROM        debian:unstable
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

ADD . /opt/paultag/vcs/

ENV VCS_MIRROR_CODE_ROOT /opt/paultag/vcs/
ENV VCS_MIRROR_REPO_ROOT /vcs/repos/
ENV VCS_MIRROR_KEY /vcs/keys/id_fredbot

CMD ["/opt/paultag/vcs/docron"]
