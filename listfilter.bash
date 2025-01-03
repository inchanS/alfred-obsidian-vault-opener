#!/bin/bash

query="$1"

# 입력값에서 공백 제거
query=$(echo "$query" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')

# configure에서 볼트 목록 가져오기
IFS=',' read -r -a vaults <<< "$vault_list"

# JSON 시작
echo "{ \"items\": ["

# Query가 없으면 모든 볼트 목록을 출력, Query가 있으면 필터링
first_item=true
for vault in "${vaults[@]}"; do
  if [[ -z "$query" || "$vault" == *"$query"* ]]; then
    # JSON 항목 구분자 추가 (첫 항목 제외)
    if [ "$first_item" = true ]; then
      first_item=false
    else
      echo ","
    fi
    # JSON 항목 출력
    echo "{
      \"title\": \"$vault\",
      \"subtitle\": \"Open Vault: $vault\",
      \"arg\": \"$vault\"
    }"
  fi
done

# JSON 끝
echo "] }"
