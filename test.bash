#!/bin/bash -xv
# SPDX-FileCopyrightText:2025 YS038
# SPDX-License-Identifier: BSD-3-Clause

ng(){
	echo ${1}行目が違うよ
	res=1
}
res=0
##nomal##
res=0

out=$(printf "apple\nbanana\napple pie\norange\n" | ./keysearch apple)
status=$?

[ "$status" = 0 ] || ng "$LINENO"

[ "$out" = "1,1
2,3" ] || ng "$LINENO"

##strange
out=$(printf "apple\nbanana\n" | ./keysearch)
[ "$?" = 1 ]        || ng "$LINENO"
[ "${out}" = "" ]   || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
