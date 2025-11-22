# frozen_string_literal: true

# Ruth は、アメリカ合衆国内で多様な州にまたがる事業を展開している実業家です。
# 彼女のビジネスは、アリゾナ、カリフォルニア、ノースカロライナといった様々な州で活動しており、
# 各州における法人税の計算が頻繁に必要とされています。
# 連邦税は全州で一律に 21％ ですが、州税は州ごとに異なり、
# アリゾナでは 4.9％、カリフォルニアでは 8.8％、ノースカロライナでは 2.5％となっています。

# Ruthは、これらの税率を考慮して、異なる州での法人税を計算する手段として、
# プログラミングによる解決策を考えました。彼女は、プログラミングの初学者であり、
# 最初に各州ごとに個別の関数を作成するアプローチを取りました。
# この方法では、各州の税率を反映した独立した関数を用意し、所得に基づいて連邦税と州税を計算し、
# 合計額を出力します。しかし、この方法には明らかな欠点があります。
# 新しい州を追加するたびに新たな関数を作成する必要があり、
# 税率の変更があった場合、各関数を個別に修正する手間がかかります。

# このシナリオは、ソフトウェア開発におけるコードの再利用性とメンテナンスの重要性を浮き彫りにします。
# 後に、Ruth は高階関数を使用して、より効率的でメンテナンスしやすい方法を学びます。
# この新しいアプローチでは、一つの汎用的な関数が異なる州の税率を処理し、必要に応じて関数を返すことで、
# 各州ごとの税額を計算します。これにより、コードの重複が減り、将来的な変更や拡張が容易になります。

# 주 이름을 받아, 그 주에 맞는 세금 계산기(람다 함수)를 만드는 함수
def print_tax_by_state(state)
  # 주별 세율 설정
  state_rate =
    case state
    when 'Arizona' then 0.049
    when 'California' then 0.088
    when 'Northcarolina' then 0.025
    else 0.0
    end

  # 람다를 만들어서 반환
  lambda do |income|
    # 연방세는 21% 고정
    federal_tax = (income * 0.21).round

    # 주세는 위에서 정산 case 사용
    state_tax = (income * state_rate).round

    # 총합
    total_tax = federal_tax + state_tax

    # 최종 출력
    puts "--> Federal Tax: #{federal_tax}"
    puts "--> #{state} State Tax: #{state_tax}"
    puts "--> Tax Amount: #{total_tax}"
    puts ''
  end
end

# Arizona용 계산기 생성
get_tax_az = print_tax_by_state('Arizona')
get_tax_az.call(400_000)

# California용 계산기 생성
get_tax_ca = print_tax_by_state('California')
get_tax_ca.call(100_000)

# Northcarolina용 계산기 생성
get_tax_nc = print_tax_by_state('Northcarolina')
get_tax_nc.call(500_000)
