# aws_tools
===============
## required
* bash
* aws cli https://docs.aws.amazon.com/ja_jp/streams/latest/dev/kinesis-tutorial-cli-installation.html"

## install
do

```
bash install.sh
```

or

```
./install.sh
```

## config

make setting files under ~/.aws_batch/.

```example:
cat ~/.aws_batch/hoge

AWS_ACCOUNT_NUMBER=0123456789
AWS_ACCESS_KEY_ID=ABCDEFGHIJKLMN
AWS_SECRET_ACCESS_KEY=AB12CD34EF56GH78IJ90
AWS_REGION=ap-northeast-1
```

## usage

### aws_list

show setting files under ~/.aws_batch/ .

```bash:aws_list
aws_list

hoge
huga
fizz
bazz
```


### aws_ec2_ip_list <setting fielname>

shows global ip and name of instnces.

```bash:aws_ec2_ip_list
aws_ec2_ip_list hoge

12.34.5.67      hoge_web_rel_1
12.34.8.90      hoge_web_re_2
12.34.1.23   hoge_web_stg_3
12.34.56.100  hoge_web_stg_4
None    hoge_web_stopped_1
None    hoge_wev_stopped_2
12.34.56.1  hoge_web_dev
```

