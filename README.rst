Running Cyclus on Condor
------------------------

Supplied herein is

* build.sub - a condor submission file to rebuild cyclus as needed
* build.tar.gz - a tarball of all libraries required to build cyclus
and associated scripts to do so
* run_tests.sub - a condor submission file to test build and cyclus
* cyclus_test.sh - a script called by the condor job

Once logged into condor with these files in the home directory of your
submit node userspace, running a job is as easy as `condor_submit
run_tests.sub`. Out, err, and log files are generated based on some of
the job information. 

Test Failure
------------

Currently, one test fails from the unit tests
(`EnvironmentTests::FindNonStandardPath`). Running the unit tests with
`gdb` causes them all to pass. At present, a `gtest_filter` flag
removing that test is included in the `cyclus_test.sh` script.
