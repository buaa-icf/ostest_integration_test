
hdc_std app install -r entry-default-signed.hap
hdc_std app install -r entry-ohosTest-signed.hap
hdc_std shell aa test -b cn.openharmony.benchmarksample -m entry_test -s unittest /ets/testrunner/OpenHarmonyTestRunner -s class ActsAbilityTest -s timeout 6000000


pause