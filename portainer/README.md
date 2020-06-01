# SWARM Cluster

## Pre requisites

* vagrant
* virtualbox

## Creation

Create a swarm cluster of 3 nodes in one command :

```
vagrant up
```

3 nodes will be created :

* n70 : 192.168.56.70
* n71 : 192.168.56.71  
* n72 : 192.168.56.72  (manager)

```
$ vagrant ssh n72
[vagrant@n72 ~]$ sudo -i          
[root@n72 ~]# docker service ls
ID                  NAME                  MODE                REPLICAS            IMAGE                        PORTS
riyz9unz0rv1        portainer_agent       global              3/3                 portainer/agent:latest       
vw18vp2nusyy        portainer_portainer   replicated          0/1                 portainer/portainer:latest   *:8000->8000/tcp, *:9000->9000/tcp
[root@n72 ~]# docker service ls
ID                  NAME                  MODE                REPLICAS            IMAGE                        PORTS
riyz9unz0rv1        portainer_agent       global              3/3                 portainer/agent:latest       
vw18vp2nusyy        portainer_portainer   replicated          1/1                 portainer/portainer:latest   *:8000->8000/tcp, *:9000->9000/tcp
```

Portainer will be accessible with this url : [http://192.168.56.72:9000/](http://192.168.56.72:9000/)

## How does it work ?

vagrant will create the VM with virtualbox, every nodes are provisionned with ansible according the playbook.yml file.
A Linux account is created (sylvain with sylv1 as password) onevery nodes wich allow a second playbook (playbook2.yml) launched on n72 which will configure the SWARM.

Yes, it can be improved :) 