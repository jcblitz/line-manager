class Person
  include ActiveModel::Model
  attr_accessor :name, :shoes, :hat
  alias :shoes? :shoes
  alias :hat? :hat

end