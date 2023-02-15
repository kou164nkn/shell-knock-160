#! /bin/bash

# 解説
# ${変数名:-文字列} → 変数が空だった場合に、文字列に置き換わる
# $(cat) で標準入力を受け取ることができる
num=${1:-$(cat)}
echo $((num*2))

# 無難な解き方
# if [ -n "$1" ]; then
#   num=$1
# else
#   read num
# fi
#
# echo $(($num*2))