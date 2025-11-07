# frozen_string_literal: true

# CSS Bootstrap は 4 つのクラスを持つグリッドシステムを使っています。
# これを利用すれば、ウェブページをユーザーのデバイスに最適化して表示することができます。
# スクリーンサイズ screenWidth が与えられるので、
# 適切な css クラスを文字列で返す、getBootstrapClass という関数を作成してください。
# スクリーンサイズは自然数としてプログラムを作成してください。

# xs: スマホサイズ（スクリーン幅 768px 未満）
# sm: タブレットサイズ（スクリーン幅 768px 以上）
# md: ノートパソコンサイズ（スクリーン幅 992px 以上）
# lg: デスクトップサイズ（スクリーン幅 1200px 以上）

def get_bootstrap_class(screen_width)
  case screen_width
    # Float::INFINITY은 무한대를 뜻함
  when 1200..Float::INFINITY
    'lg'
  when 992...1200
    'md'
  when 768...992
    'sm'
  else
    'xs'
  end
end

puts get_bootstrap_class(340)
puts get_bootstrap_class(800)
puts get_bootstrap_class(1000)
puts get_bootstrap_class(1350)
