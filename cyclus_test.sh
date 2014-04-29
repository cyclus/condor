#!/bin/bash
#
# Download and build cyclus and run unit tests.
#

tar -xf cyclus-build.tar.gz

tar -xf compiler.tar.gz  
tar -xf cyclus-deps.tar.gz 
tar -xf python-modules.tar.gz 
tar -xf scripts.tar.gz

source ./scripts/source.sh
echo "linking bzip"
rm $CYC_DEPS_DIR/lib/libbz2.so
ln -sv $CYC_DEPS_DIR/lib/libbz2.so.1.0.6 $CYC_DEPS_DIR/lib/libbz2.so
echo "building and installing cyclus"
./scripts/build_install_cyclus.sh
echo "unit testing cyclus"
$INSTALL_DIR/bin/cyclus_unit_tests
cd cyclus/tests
echo "running regression tests in $PWD"
python -c "import nose; nose.main();"
cd ../..
rm *.tar.gz