FROM ubuntu:latest

RUN apt-get update && apt-get install -y sysstat net-tools systemd iproute2

ADD info_vm.sh /info_vm.sh
RUN ["chmod", "+x", "/info_vm.sh"]
CMD ["bash", "./info_vm.sh"]
