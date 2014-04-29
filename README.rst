Running Cyclopts on Condor
--------------------------

Supplied herein is

* build.sub - a condor submission file to rebuild cyclopts as needed
* run_tests.sub - a condor submission file to test build and cyclopts
* cyclopts_test.sh - a script called by the condor job

Note that you will need to download `cyclopts-build.tar.gz
<http://cnergdata.engr.wisc.edu/cyclus/condor/cyclopts-build.tar.gz>`_
and place it in the directory from which you launch jobs.

Once logged into condor with these files in the home directory of your
submit node userspace, running a job is as easy as ``condor_submit
run_tests.sub``. Out, err, and log files are generated based on some of
the job information. 
