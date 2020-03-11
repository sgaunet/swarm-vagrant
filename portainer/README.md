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


Portainer will be accessible with this url : [http://192.168.56.72:9000/](http://192.168.56.72:9000/)

## How does it work ?

vagrant will create the VM with virtualbox, every nodes are provisionned with ansible according the playbook.yml file.
A Linux account is created (sylvain with sylv1 as password) onevery nodes wich allow a second playbook (playbook2.yml) launched on n72 which will configure the SWARM.

Yes, it can be improved :) 