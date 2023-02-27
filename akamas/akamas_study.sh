#!/bin/bash
# akamas delete workflow sockshop_jmeter
# akamas delete study sockshopt_baseline
akamas delete study sockshop_optimize_relaxed


# akamas create workflow workflows/sockshop_jmeter.yml
# akamas create study studies/sockshop_baseline.yml
akamas create study studies/study.yml


akamas start study "sockshop optimization study"