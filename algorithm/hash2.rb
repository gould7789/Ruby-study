# frozen_string_literal: true

# Zollar は算数の計算練習ができるウェブサイトを立ち上げました。
# このサイトには a 問題から z 問題までの 26 個の問題があり、サイトには復習機能が備わっています。
# この機能では、ユーザーが一度しか解いていない問題をトップページの一番上に表示します。

# ユーザーが解いたことのある問題一覧が、小文字のアルファベットから成る文字列 s として与えられるとき、
# この文字列内で最初に出現し、かつ一度しか解かれていない問題のインデックスを返す
# firstNonRepeating という関数を定義してください。
# このような問題が存在しない場合は -1 を返してください。例えば、文字列が "aabbcdddeffg" の場合、
# 一度しか解かれていない最初の問題は c で、そのインデックスは 4 なので 4 を返します。

# 복습을 하지 않은 요소의 인덱스를 반환하는 함수
def first_non_repeating(s)
  # tally 메서드를 통해 s의 각 요소의 밸류값을 출력
  total_study = s.chars.tally

  # 밸류값이 1인 키값이 있다면 그 키값의 인덱스를 반환
  total_study.each do |key, val|
    if val == 1
      return s.index(key)
    end
  end

  -1

  # -----------------------------------------------
  # find 메서드 사용
  # chars = s 안에 있는 문자열 배열을 하나씩 분리한 배열로 변환
  # find 조건에 맞는 요소를 찾음 -> 밸류값이 1인 키값을 찾는 조건
  first_unique_char = s.chars.find do |char|
    total_study[char] == 1  
  end

  if first_unique_char
    return s.index(first_unique_char)
  end

  -1
end

puts first_non_repeating('aabbcdddeffg')
