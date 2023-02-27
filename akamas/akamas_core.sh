#!/bin/bash
akamas delete system sockshop
akamas create system system/system.yml
#akamas create component system/component_jvm.yml sockshop
akamas create component system/component_web-application.yml sockshop
#akamas create component_kubernetes.yml sockshop
akamas create telemetry-instance system/telemetry_instance_csv.yml sockshop
#akamas create telemetry-instance system/telemetry_instance_prometheus.yml sockshop
#akamas create workflow workflows/sockshop_jvm.yml
#akamas create study studies/max_tph.yml

akamas create component system/Carts_jvm.yml sockshop
akamas create component system/Carts_kubernetes.yml sockshop
#akamas create component system/Catalogue_kubernetes.yml sockshop
#akamas create component system/Front-end__kubernetes.yml sockshop
akamas create component system/Orders_jvm.yml sockshop
akamas create component system/Orders_kubernetes.yml sockshop 
#akamas create component system/Payment_kubernetes.yml sockshop
akamas create component system/Queue-master_jvm.yml sockshop
#akamas create component system/Queue-master_kubernetes.yml sockshop
akamas create component system/Shipping_jvm.yml sockshop
akamas create component system/Shipping_kubernetes.yml sockshop
#akamas create component system/User_kubernetes.yml sockshop
