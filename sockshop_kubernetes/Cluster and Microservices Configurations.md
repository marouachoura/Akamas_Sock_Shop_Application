## Cluster and Microservices Configurations

| Hostname        | CPU      | RAM |
| ------|-----|-----|
| Master-node  	| 4 	| 12	|
| Worker-node 	| 4	|12 	|

Table1: Characteristic of Kubernetes cluster


## Microservices configuration
| service        | N of default active Pods      | Containers info | JVM arguments if Applicable (Default Configuration)|  Memory quota and limit ( Default Configuration)| CPU requests and limit ( Default Configuration) |  Memory quota and limit (**Akamas** Configuration) | JVM arguments (Akamas Configuration) | CPU requests and limit( Akamas Configuration)| 
| ------|-----|-----|-----|-----|----- | ------ | ----- | ----- |
| Service Carts 	| 1 	| 12	| Image Name: weaveworksdemos/carts:0.4.8 |test3  |test4 | test5 | test 6  | test7 
| Worker-node 	| 4	|12 	| test2|test3 |test4 | test5 | test6 | test 7

