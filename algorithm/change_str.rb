# frozen_string_literal: true

# 文字列 s が与えられるので、各アルファベットの小文字を大文字に、
# 大文字を小文字に変換する関数 swapStringCase を作成してください。
# 別の関数 swapCase を使って、各文字の大文字と小文字を交換します。

def swap_string_case(s)
  result = ''

  # 문자열을 순회
  s.each_char do |word|
    # 문자가 대문자 범위에 속하는지 확인
    if word.match?(/[A-Z]/)
      # 대문자라면, 소문자로 변경하여 결과에 추가
      result += word.downcase

    # 문자가 소문자 범위에 속하는지 확인
    elsif word.match?(/[a-z]/)
      # 소문자라면, 대문자로 변경하여 결과에 추가
      result += word.upcase

    # 알파벳이 아닌 다른 문자일 경우
    else
      # 그대로 결과에 추가
      result += word
    end
  end

  return result

  # -- swapcase 메서드 --
  # 문자열 복사
  work_str = s.dup

  # 대소문자 변환
  work_str.swapcase
end

puts swap_string_case('AbcD')
puts swap_string_case('')
