# frozen_string_literal: true

# Lavell はレースゲームを開発しており、ランダム対戦の仕組み作りに取り組んでいます。
# 彼は、ユーザーのランクが特定の数値 m だけ離れているペアがどれだけ存在するかを調べたいと考えています。
# ユーザーのランク一覧 ranks（整数の配列）と差の絶対値 m が与えられたとき、
# ランクの差が m に等しいペアの数を返す countPairs という関数を作成してください。
# 例えば、配列 [1,2,3,4] に対して差が 2 のペアを探すと、[1,3] と [2,4] の 2 ペアが見つかります。

# 배열 내에서 두 수의 차이가 m인 쌍의 갯수를 계산하는 함수
def count_pairs(ranks, m)
  # 카운팅
  pair_count = 0

  # combination()를 사용하여 배열의 모든 '고유한 쌍을'을 생성
  ranks.combination(2) do |a, b|
    # abs(절댓값) 메서드를 사용하여 두 요소의 차이의 절댓값을 계산
    difference = (a - b).abs

    # 차이가 주어진 m과 같은지 확인
    if difference == m
      pair_count += 1
    end
  end

  # 최종 결과 반환
  pair_count
end

puts count_pairs([1, 2, 3, 4], 1)
puts count_pairs([1, 2, 3, 4], 5)
puts count_pairs([-7, 93, 24, 204, 538, 193, 438], 100)
