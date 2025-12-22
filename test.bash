#!/bin/bash -xv
#SPDX ...

ng(){
	echo ${1}行目が違うよ
	res=1
}
res=0
##nomal##
out=$(seq 5 | ./kadai)
[ "${out}" = 15.0 ] || ng "$LINENO"
##strange 
out=$(echo あ|./kadai)
[ "$?" = 1 ]        || ng "$LINENO"
[ "${out}" = "" ]   || ng "$LINENO"

out=$(echo | ./kadai)
[ "$?" = 1 ]        || ng "$LINENO"
[ "${out}" = "" ]   || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
