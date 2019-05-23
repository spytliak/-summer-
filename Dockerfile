FROM ubuntu:14.04

RUN apt-get update && apt-get install -y sysstat

ADD info_vm.sh /root/info_vm.sh
#ENTRYPOINT ["/root/info_vm.sh"]
RUN ["chmod", "+x", "/root/info_vm.sh"]
#CMD ["/root/info_vm.sh"]

