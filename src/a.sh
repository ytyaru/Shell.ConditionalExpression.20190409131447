#!/bin/bash
#set -Ceu
#-----------------------------------------------------------------------------
# bash 条件文の書き方（if, test, [], [[]]）
# 作成日時: 2019-04-09T13:18:06+0900
#-----------------------------------------------------------------------------
echo "----- [[  ]] -----"
[[ 0 -eq 0 ]]; echo $?
[[ 0 -eq 1 ]]; echo $?
[[ 0 -eq 0 ]] && echo "TRUE"
[[ 0 -eq 0 ]] && echo "TRUE1"; echo "TRUE2"
[[ 0 -eq 1 ]] && echo "TRUE" || echo "FALSE"
# 論理演算
[[ 0 -eq 0 && 1 -eq 1 ]] && echo "TRUE" || echo "FALSE"
[[ 0 -eq 0 || 1 -eq 2 ]] && echo "TRUE" || echo "FALSE"
# 計算
[[ 2**10 -eq 512+512 ]] && echo "Equal" || echo "Not equal"
[[ '2 ** 10' -eq '512 + 512' ]] && echo "Equal" || echo "Not equal"
# 文字列比較
[[ "a" = "a" ]] && echo "TRUE" || echo "FALSE"
[[ "a" = "b" ]] && echo "TRUE" || echo "FALSE"
[[ -z "" ]] && echo "TRUE" || echo "FALSE"
# ダブルクォート不要
var="a b"
[[ $var = "a b" ]] && echo "TRUE" || echo "FALSE"
# ワイルドカード
[[ '2000-01-01' = *-*-* ]] && echo "Match!!" || echo "Not match..."
[[ '2000-01-01' == *-*-* ]] && echo "Match!!" || echo "Not match..."
# 正規表現
[[ '2000-01-01' =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]] && echo "Match!!" || echo "Not match..."
#   なぜかマッチしない \dのメタ文字がない？ https://ja.wikipedia.org/wiki/%E6%AD%A3%E8%A6%8F%E8%A1%A8%E7%8F%BE
[[ '2000-01-01' =~ ^\d{4}-\d{2}-\d{2}$ ]] && echo "Match!!" || echo "Not match..."
[[ '2000-01-01' =~ ^[\d]{4}-[\d]{2}-[\d]{2}$ ]] && echo "Match!!" || echo "Not match..."
[[ '2000-01-01' =~ ^(\d){4}-(\d){2}-(\d){2}$ ]] && echo "Match!!" || echo "Not match..."

echo "----- [  ] -----"
[ 0 -eq 0 ]; echo $?
[ 0 -eq 1 ]; echo $?
[ 0 -eq 0 ] && echo "TRUE"
[ 0 -eq 0 ] && echo "TRUE1"; echo "TRUE2"
[ 0 -eq 1 ] && echo "TRUE" || echo "FALSE"
[ 0 -eq 0 -a 1 -eq 1 ] && echo "TRUE" || echo "FALSE"
[ 0 -eq 0 -o 1 -eq 2 ] && echo "TRUE" || echo "FALSE"
[ 0 -eq 0 ] && [ 1 -eq 1 ] && echo "TRUE" || echo "FALSE"
[ 0 -eq 0 ] || [ 1 -eq 2 ] && echo "TRUE" || echo "FALSE"
[ "a" = "a" ] && echo "TRUE" || echo "FALSE"
[ "a" = "b" ] && echo "TRUE" || echo "FALSE"
[ -z "" ] && echo "TRUE" || echo "FALSE"
var="a b"
[ "$var" = "a b" ] && echo "TRUE" || echo "FALSE"

echo "----- test -----"
test 0 -eq 0; echo $?
test 0 -eq 1; echo $?

echo "----- if -----"
if [ 0 -eq 0 ]; then echo "TRUE"; fi;
if [ 0 -eq 1 ]; then echo "TRUE"; else echo "FALSE"; fi;
if [ 0 -eq 1 ]; then echo "TRUE"; elif [ 0 -eq 0 ]; then echo "ELSE_IF"; else echo "FALSE"; fi;

# 複数行
if [ 0 -eq 0 ]; then
	echo "TRUE"
fi

if [ 0 -eq 1 ]; then
	echo "TRUE"
else
	echo "FALSE"
fi

if [ 0 -eq 1 ]; then
	echo "TRUE"
elif [ 0 -eq 0 ]; then
	echo "ELSE_IF"
else
	echo "FALSE"
fi

# 複数行（;なし）
if [ 0 -eq 0 ]
then
	echo "TRUE"
fi

if [ 0 -eq 1 ]
then
	echo "TRUE"
else
	echo "FALSE"
fi

if [ 0 -eq 1 ]
then
	echo "TRUE"
elif [ 0 -eq 0 ]
then
	echo "ELSE_IF"
else
	echo "FALSE"
fi

