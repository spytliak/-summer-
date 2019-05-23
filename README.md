INFO script

Script to get full information about the server


Setup

docker build -t [NAME] .


Usage

docker run [NAME]


Example

root@:~/metrics/-summer-# docker run ub1
===Configuration server b977019568c9====

=====RELEASE=====

DISTRIB_ID=Ubuntu

=====KERNEL=====

4.15.0-47-generic

=====UPTIME=====

up 1 week, 1 day, 4 hours, 26 minutes

=====USERS=====

15:50:55 up 8 days,  4:26,  0 users,  load average: 0.00, 0.00, 0.03
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT

=====Proc=====

model name      : Common KVM processor
cpu MHz         : 3191.998
cache size      : 16384 KB
physical id     : 0
siblings        : 2
clflush size    : 64
address sizes   : 40 bits physical, 48 bits virtual
model name      : Common KVM processor
cpu MHz         : 3191.998
cache size      : 16384 KB
physical id     : 0
siblings        : 2
clflush size    : 64
address sizes   : 40 bits physical, 48 bits virtual
model name      : Common KVM processor
cpu MHz         : 3191.998
cache size      : 16384 KB
physical id     : 1
siblings        : 2
clflush size    : 64
address sizes   : 40 bits physical, 48 bits virtual
model name      : Common KVM processor
cpu MHz         : 3191.998
cache size      : 16384 KB
physical id     : 1
siblings        : 2
clflush size    : 64
address sizes   : 40 bits physical, 48 bits virtual

=====RAM=====

total        used        free      shared  buff/cache   available
Mem:           1.9G        398M        236M        1.0M        1.3G        1.4G
Low:           1.9G        1.7G        236M
High:            0B          0B          0B
Swap:          961M        780K        961M


..............
..............
..............
