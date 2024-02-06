FROM debian:12

RUN apt-get update && \
apt-get install -y apt-utils sudo procps dialog man \
nano vim powerline tmux \
build-essential git \
python3 python-is-python3 python3-pip python3.11-venv

RUN adduser --quiet --disabled-password user && \
echo "user:password" | chpasswd && \
usermod -aG sudo user

USER user
WORKDIR /home/user/

ENTRYPOINT ["bash"]

# build it:
# docker build -t dockerdev .
#
# run it:
# docker run -it -v $PWD:/host -h dockerdev --name dockerdev dockerdev
# 
# after exiting, to start it back up:
# docker start dockerdev
# docker attach dockerdev

