# frozen_string_literal: true

# Alberto は多言語対応のウェブサイト制作のチームに所属しています。
# アクセスするユーザーの使用言語によって、
# サイトの表示を変更する仕組みを実装するようにマネージャーに指示されました。
# 文字列 Japanese, English, Spanish, Russian が与えられるので、
# 文字列によって www.example.org のサブディレクトリにリダイレクトする、
# redirectionUrl という関数を作成してください。例えば、この関数では Japanese が選択された時、
# www.example.org/ja を返します。
# もし、上記以外の文字列が入力された時、www.example.org/ を返します。

def redirection_url(language)
  # 주소
  www = 'www.example.org/'

  # 각 문자에 맞게 조건 작성
  case language
  when 'English' then "#{www}en"
  when 'Japanese' then "#{www}ja"
  when 'Spanish' then "#{www}es"
  when 'Russian' then "#{www}ru"
  else www
  end
end

puts redirection_url('English')
