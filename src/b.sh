#!/bin/bash
#set -Ceu
#-----------------------------------------------------------------------------
# bash 条件文の書き方（if, test, [], [[]]）
# 作成日時: 2019-04-09T13:18:06+0900
#-----------------------------------------------------------------------------
FILE=a.txt
rm -Rf $FILE
[ -f $FILE ] && echo 'ファイルは存在する' || echo 'ファイルは存在しない'
touch $FILE
[ -f $FILE ] && echo 'ファイルは存在する' || echo 'ファイルは存在しない'
rm -Rf $FILE

DIR=dir
rm -Rf $DIR
[ -d $DIR ] && echo 'ディレクトリは存在する' || echo 'ディレクトリは存在しない'
mkdir $DIR
[ -d $DIR ] && echo 'ディレクトリは存在する' || echo 'ディレクトリは存在しない'
rm -Rf $DIR

[ -v FILE ] && echo '変数名は存在する' || echo '変数名は存在しない'
[ -v FFFF ] && echo '変数名は存在する' || echo '変数名は存在しない'
[ -z $FILE ] && echo '変数名は長さゼロ-z' || echo '変数名は長さゼロでない-z'
ZERO=
[ -z $ZERO ] && echo '変数名は長さゼロ-z' || echo '変数名は長さゼロでない-z'

[ -n $FILE ] && echo '変数名は長さゼロでない-n' || echo '変数名は長さゼロ-n'
[ -n $ZERO ] && echo '変数名は長さゼロでない-n' || echo '変数名は長さゼロ-n'

[ "$FILE" = 'a.txt' ] && echo '文字列は等しい' || echo '文字列は等しくない'
[ "$FILE" = 'b.txt' ] && echo '文字列は等しい' || echo '文字列は等しくない'
[ "$FILE" != 'a.txt' ] && echo '文字列は等しい' || echo '文字列は等しくない'
[ "$FILE" != 'b.txt' ] && echo '文字列は等しい' || echo '文字列は等しくない'

[ 1 -eq 1 ] && echo '-eq'
[ 1 -ne 2 ] && echo '-ne '
[ 1 -lt 2 ] && echo '-lt'
[ 1 -le 1 ] && echo '-le'
[ 2 -gt 1 ] && echo '-gt'
[ 1 -ge 1 ] && echo '-ge'

