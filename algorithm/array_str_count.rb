# frozen_string_literal: true

# Herbie は小学生向けに英語のゲームを作りました。
# 単語が入っているバッグを用意し、単語の中に含まれる特定のアルファベットをカウントして
# いくというものです。
# 単語のリスト bagOfWords とアルファベット keyCharacter が与えられるので、
# 単語の中に特定のアルファベットが何回現れるかを返す、charInBagOfWordsCount という
# 関数を定義してください。

# 문자열 안에 특정 요소가 몇개있는지 찾는 함수
def char_count(words, key)
  # 결과
  result = 0

  # count 메서드를 통해 문자 안에 key의 포함 수를 계산
  words.each do |word|
    counting = word.count(key)

    # count된 수를 결과에 합함
    result += counting
  end

  # 결과 출력
  result
end

puts char_count(['hello', 'world'], 'o')
puts char_count(['hello', 'world'], 'p')
puts char_count(['The', 'tech', 'giant', 'is in the', 'city center'], 'p')
