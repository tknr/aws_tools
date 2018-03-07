#!/bin/bash -x

type aws;
if [ $? -ne 0 ]; then
	echo "install aws cli. https://docs.aws.amazon.com/ja_jp/streams/latest/dev/kinesis-tutorial-cli-installation.html"
	exit 1;
fi
echo $?;

mkdir ~/.aws
mkdir -p ~/bin
ln -s `pwd`aws_list ~/bin/
ln -s `pwd`aws_ec2_ip_list ~/bin/
ln -s `pwd`aws_ssl_list ~/bin/

export_count=`cat ~/.bash_profile | grep 'export PATH="$HOME/bin:$PATH"' | wc -l`
echo $export_count

if [ $export_count -eq 0 ]; then
	echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bash_profile
fi
echo "installed."
source ~/.bash_profile