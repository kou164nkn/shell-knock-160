#!/bin/bash -e
set -o pipefail
trap 'rm .tmp.top10' EXIT

# OR を使うことで、異常ステータスを握りつぶす方法
# pipefail をセットすると、パイプ前の sort も OR の対象になる
# ただし、この方法だと PIPEFAIL 以外のエラーも握りつぶしてしまう
sort | head > .tmp.top10 || true
# 別解として、sed で書き出す方法がある
# この場合だったら、11 行目以降も読み込むため PIPEFAIL が発生しない
# sort | sed -n '1,10p' > .tmp.top10

echo "+++++TOP 10+++++"
cat .tmp.top10