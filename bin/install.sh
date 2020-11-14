#!/bin/bash

mkdir -p ~/bin

CWD=`pwd`
ln -sf $CWD/kube-ps1.sh  ~/bin/kubee-ps1.sh
ln -sf $CWD/aws-mfa  ~/bin/aws-mfa
