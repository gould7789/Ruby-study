# frozen_string_literal: true

# Block は野球のリーグ戦の運営者であり、
# 26 チーム（a チームから z チームまで）の試合の組み合わせを考えています。
# リーグ戦では、各チームが同じ数の試合を行う必要があります。
# Block は、どのチームが試合を行ったかを記録しており、例えば「a チーム」と「b チーム」が試合を行った場合、
# 「ab」と記録されます。このようにして、「aabcbcdda」のような記録が作成されることもあります。

# あなたの仕事は、与えられた文字列 teams で、
# 全てのチームが同じ数の試合を行っているかを判定する findXTimes という関数を作成することです。
# 文字列 teams は試合を行ったチームの名前が連続して記録されたものです。

def find_times(teams)
  # 배열이 비어 있으면 (팀이 없으면) true 반환
  return true if teams.empty?

  # String.chars.tally를 사용하여 각 문자의 빈도수를 한 번에 계싼
  #   ex) "aabccdd" -> {"a"=>2, "b"=>1, "c"=>2, "d"=>2}
  counts = teams.chars.tally

  # 기준 값 설정: 해시의 첫 번째 키-밸류 쌍의 값(빈도수)을 개수로 설정
  standard_count = counts.values[0]

  # 나머지 빈도수 비교
  # counts.values (빈도수로 이루어진 배열) 순회
  # 모든 빈도수가 standard_count와 같은지 확인
  # Araay.all? 메서드는 배열의 모든 요소가 주어진 조건을 만족하는지 확인하고 불리언 값 반환
  all_same = counts.values.all? do |count|
    count == standard_count
  end

  # 최종 반환
  all_same
end

puts find_times('bacddc')
puts find_times('babacddc')
puts find_times('aaabbccdd')
puts find_times('zadbchvwxbwhdxvcza')
puts find_times('z')
