# frozen_string_literal: true

# Smith は間違い探しゲームに参加しています。このゲームでは、異なる数字が並べられたボード arr と、
# 同じ数字がシャッフルされたボード shuffledArr が与えられます。
# shuffledArr において、arr の各数字がどのインデックスに移動したかを特定する 
# shuffledPositions という関数を定義してください。
# 例えば、arr が [2,32,45] で shuffledArr が [45,32,2] の場合、
# 2 はインデックス 0 から 2 へ、32 は 1 から 1 へ、45 は 2 から 0 へ移動したので、
# 結果は [2,1,0] となります。

# 무작위로 배열을 재배치 후 어떤 인덱스로 이동했는지 구하는 함수
def shuffled_index(arr, shuffled_arr)
  arr.map { |num| shuffled_arr.index(num) }
end

p shuffled_index([2, 32, 45], [45, 32, 2])
p shuffled_index([10, 11, 12, 13], [12, 10, 13, 11])
p shuffled_index([10, 11, 12, 13], [10, 11, 12, 13])
p shuffled_index([1350, 181, 1714, 375, 1331, 943, 735], [1714, 1331, 735, 375, 1350, 181, 943])
