# frozen_string_literal: true

# Charly と彼の友人たちは、前から読んでも後ろから読んでも同じになる「回文」を作る遊びをしています。
# このために、ある文字列が回文かどうかをチェックする isPalindrome という関数を作成する必要があります。
# この関数では、スペースは無視し、大文字と小文字は区別しないとします。

# 例えば、"Top spot" という文字列でこの関数を使用すると、
# スペースを除いて大文字小文字の区別をなくすと "Topspot" となります。これは前から読んでも "Topspot"、
# 後ろから読んでも "topspoT" となり、回文であるため、関数は true を返すべきです。

# 別のテストケースとして "Was it a cat I saw" があります。
# 同様にスペースを除去し、大文字小文字を区別しないと "Wasitacatisaw" となり、
# これも前後どちらから読んでも変わらないため、回文です。従って、
# この文字列に対しても関数は true を返すべきです。

# 대소문자와 띄어쓰기를 구별하지 않고 회문인지 판별
def palindrome?(string)
  # 문자열 복사
  work_str = string.dup

  # 문자열을 소문자로 변경하면서 띄어쓰기 제거
  clean_str = work_str.downcase.delete(' ')
  # 문자열을 뒤집음
  re_str = clean_str.reverse

  clean_str == re_str
end

puts palindrome?('kayak')
puts palindrome?('recursion')
puts palindrome?('Top spot')
puts palindrome?('Was it a cat I saw')
