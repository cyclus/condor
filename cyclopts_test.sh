#!/bin/bash
#
# Download and build cyclus and run unit tests.
#

tar -xf cyclopts-build.tar.gz

tar -xf cyclus-install.tar.gz  
tar -xf cyclus-deps.tar.gz 
tar -xf python-modules.tar.gz 
tar -xf python-build.tar.gz 
tar -xf scripts.tar.gz

source ./scripts/source.sh
mkdir -p $CYCLOPTS_INST_DIR/lib/python2.7/site-packages/
git clone https://github.com/gidden/cyclopts
cd cyclopts
./setup.py install --user
cd tests;
python -c "import nose; nose.main();"
cd ../..
rm *.tar.gz