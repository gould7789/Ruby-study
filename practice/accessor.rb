# frozen_string_literal: true

class Character
  attr_accessor :name

  # attr_reader -> 読み取り専用
  # attr_writer -> 書き込み専用

  def initialize(name)
    @name = name
  end
end

tomada = Character.new('とまだ')
puts tomada.name
tomada.name = 'とまだ2'
puts tomada.name
