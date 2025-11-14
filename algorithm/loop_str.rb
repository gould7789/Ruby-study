# frozen_string_literal: true

# R 大学ではどの授業でも 3 回以上欠席すると、単位を取得できない制度です。
# Participate を表す P と Absence を表す A によって構成される文字列 string が与えられるので、
# 単位取得可能であれば pass、不可能であれば fail を返す、doYouFail という関数を作成してください。

# A가 3회 이상이면 fail 반환, 그 이외에는 pass
def do_you_fail(string)
  # A 횟수를 카운트
  count = 0

  # 문자열 순회
  string.each_char do |s|
    # A가 나올 때마다 카운팅
    count += 1 if s == 'A'
  end

  # 카운트 횟수를 확인 후 결과 반환
  if count >= 3
    'fail'
  else
    'pass'
  end
end

puts do_you_fail('AAPPAP')
puts do_you_fail('AAPPAA')
puts do_you_fail('PAPPA')
