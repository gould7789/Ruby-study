# frozen_string_literal: true

# Fingal はあるアパレルショップに訪れました。
# そこでは、服を複数購入した場合、1 点だけ無料にするセールを行なっていました。
# 購入する服の値段がまとめてある intArr が与えられるので、
# 1 点無料になった際の合計の金額を返す、minAndMax という関数を作成してください。
# 無料になる服が購入するものの中で最も高いものの場合と、安いものの場合の 2 つを返してください。

# 가장 비싼 옷 제외한 총 가격, 가장 싼 옷 제외한 총 가격 반환
def min_and_max(arr)
  # # 배열 초기화를 위한 복사
  # work_arr = arr.dup

  # # 결과를 출력할 배열
  # result = []

  # # 가장 비싼 것과 저렴한 요소의 변수
  # max_price = work_arr.max
  # min_price = work_arr.min

  # # 순회를 위한 세일 목록 배열
  # sale = [max_price, min_price]

  # sale.each do |price|
  #   # 비싼 것을 제외한 것과 저렴한 것을 제외한 두 경우
  #   # 가격이 같은 경우가 있을 수 있기 때문에 요소의 인덱스를 찾은 후 그 인덱스를 제거
  #   remove_idx = work_arr.index(price)
  #   work_arr.delete_at(remove_idx)

  #   # 제거 후 총 가격을 구한 뒤, 결과 배열에 삽입
  #   total = work_arr.sum
  #   result << total

  #   # 다음 계산을 위해 배열 초기화
  #   work_arr = arr
  # end

  # result

  # -----------------------------------------------------

  # 간결한 방법

  # 배열 복사
  work_arr = arr.dup

  # 총 가격
  total = work_arr.sum

  # 가장 비싼 가격과, 저렴한 가격
  max_price = work_arr.max
  min_price = work_arr.min

  # 총 가격에서 각 가격을 뺌
  max_sale_price = total - max_price
  min_sale_price = total - min_price

  # 결과 출력
  [max_sale_price, min_sale_price]
end

p min_and_max([5, 3, 2, 3, 4])
p min_and_max([5, 5, 5, 5, 5])
