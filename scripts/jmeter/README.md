# JMeter

Lab component to execute a JMeter test plan via `chiabre/jmeter_plugins` img

`chiabre/jmeter_plugins` features available on [github](https://github.com/chiabre/konkart_jmx_exporter)

## How to use in Akamas for Konakart testing

### Execution 

```console
docker run --net=akamas_lab --rm --name jmeter -i -v `pwd`/konakart:/tmp -w /tmp -p 9270:9270 chiabre/jmeter_plugins -t ramp_test_plan.jmx -JTARGET_HOST=`hostname`
```

the above command will:
* monunt the local folder `'pwd'/konakart` into the container `/tmp/` folder to make available the konakart test script to jmeter
* execute the test passed in the `-t` option (details in the following section)
* provide an OOB integration with Prometheus (docker_lab set-up) allowing the collection of the jmeter metrics via Prometheus Listener for Jmeter

### Konakart JMeter test

`test_fragment.jmx`: JMeter test fragment that inclues the main test plan logic
`ramp_test_plan.jmx`: JMeter test plan with a predifined JMeter thread group controller linked to the above test fragment. This test plan requires the 'Prometheus Listener for Jmeter' plugin in the JMeter lib\ext folder.
`plateau_test_plan.jmx`: JMeter test plan with a predifined JMeter concurrency thread group controller linked to the above test fragment. This test plan requires the 'Prometheus Listener for Jmeter' and 'Concurrency Thread Group' plugins in the JMeter lib\ext folder.

test fragment and test plan files have to be in the same folder. The test can be executed using one of the 2 test plan as standard jmeter script (eg. `sh jmeter.sh -t ramp_test_plan.jmx`)

#### Test fragment

1. Welcome (homepage)
2. Random category page x2
3. Random manufactor page x2
4. Random product page x5
5. Add to cart (last product)

after each request uniform random timer of `RANDOM_DELAY_MAX_MS` (default 100ms) and `CONSTANT_DELAY_OFFSET_MS` (default "150") is applied 

#### Variables 

* `-JTARGET_HOST` (default "localhost")
* `-JTARGET_PORT` (default "8780")
* `-JRANDOM_DELAY_MAX_MS` (default "100")
* `-JCONSTANT_DELAY_OFFSET_MS` (default "150")

### Ramp test plan

![Thread group](/jmeter/konakart/img/ramp_thread_group.png)

#### Variables

* `-JTHREADS` (default "20")
* `-JRAMP_SEC` (default "200")

### Plateau test plan

![Thread group](/jmeter/konakart/img/plateau_thread_group.png)

#### Variables 

* `-JTHREADS`  (default "20")
* `-JRAMP_UP_MIN` (default "1")
* `-JRAMP_UP_COUNT`(default "5")
* `-JHOLD_MIN` (default "5")



