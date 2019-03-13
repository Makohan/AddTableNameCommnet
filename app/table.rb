require_relative './string.rb'

# table class
class Table
  attr_reader :class_name, :table_name
  def initialize(class_name)
    @class_name = class_name
    @table_name = class_name.to_s.to_snake
  end
end
