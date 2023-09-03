FROM debian:12

RUN apt-get update && \
apt-get install -y sudo procps dialog man \
nano vim powerline \
build-essential git python3 python-is-python3 python3-pip

RUN adduser --quiet --disabled-password user && \
echo "user:password" | chpasswd && \
usermod -aG sudo user

USER user
WORKDIR /home/user/

ENTRYPOINT ["bash"]

# build it
# docker build -t dockerdev .
#
# run it
# docker run -it -v .:/host -h dockerdev --name dockerdev dockerdev
