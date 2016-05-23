class Person
  include ActiveModel::Model
  attr_accessor :name, :shoes, :hat

  def shoes?
    ActiveRecord::Type::Boolean.new.type_cast_from_database(shoes)
  end

  def hat?
    ActiveRecord::Type::Boolean.new.type_cast_from_database(hat)
  end
end