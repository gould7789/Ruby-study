# frozen_string_literal: true

# Brecker がクイズ大会に参加した時、ある文字列をランダムに並び替えた時に、
# 最長となる回文を答える問題が出題されました。
# 文字列 string が与えられるので、最長の回文の長さを返す、
# longestPalindromeLength という関数を作成してください。
# 例えば、文字列 hello 内の文字を組み合わせてできる最長の回文の 1 つは lhl となるので、3 を返します。

# 문자열을 조합해서 만들 수 있는 가장 긴 회문의 길이를 구하는 함수
def longgest_palindrome(s)
  # 각 문자가 몇 번 등장했는지 계산
  counts = s.chars.tally

  # 등장횟수가 홀수인 것을 세기
  odd_count = counts.values.count(&:odd?)

  # 계산
  if odd_count == 0
    # 홀수가 하나도 없으면 모두 짝이 맞으므로 전체 길이를 반환
    s.length
  else
    # 홀수 개수만큼 빼서 짝수로 만들고, 가운데에 넣을 1개만 다시 넣어줌
    s.length - odd_count + 1
  end
end

puts longgest_palindrome('abcccdd')
puts longgest_palindrome('kayak')
puts longgest_palindrome('forkayakkayakfor')
puts longgest_palindrome('harumautdoloresetaperiamrationeestvoluptatesexercitationem.')
