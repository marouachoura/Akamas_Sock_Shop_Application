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

## Parameters Selection
| Name                     | Max        | Min      |
| -------------------------|------------|----------|
|jvm_minHeapSize  | 32 | 256|
|jvm_maxHeapSize  | 64 | 1024|
|jvm_gcType  | - | -|
|jvm_newSize  | 64 | 1024|
|jvm_parallelGCThreads  | 1 | 2|
|jvm_survivorRatio  | - | -|
|jvm_maxTenuringThreshold  | - | -|
|cpu_limit  | 100 | 400|
|memory_limit  | 256 | 512|
|cpu_request  | 20 | 100|
|memory_request  | 100 | 256|
