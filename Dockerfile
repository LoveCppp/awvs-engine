FROM ubuntu:latest
RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN mkdir /data
WORKDIR /data
RUN apt-get update && apt-get upgrade -y && apt-get install -y sudo apt-utils net-tools && rm -rf /var/lib/apt/lists/*
RUN apt-get update && sudo apt-get install libxdamage1 libgtk-3-0 libasound2 libnss3 libxss1 libx11-xcb1 -y
COPY ./acunetix_12.0.190902105_x64.sh .
RUN chmod u+x acunetix_12.0.190902105_x64.sh
RUN sh -c '/bin/echo -e "\nyes\n" |  ./acunetix_12.0.190902105_x64.sh --engineonly'
CMD chmod u+x /home/acunetix/.acunetix/start.sh
USER acunetix
CMD /home/acunetix/.acunetix/start.sh
