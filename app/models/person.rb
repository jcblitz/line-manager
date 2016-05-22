class Person
    attr_reader :name, :shoes, :hat
    alias :shoes? :shoes
    alias :hat? :hat

    def initialize(name, shoes, hat)
        @name = name
        @shoes = shoes
        @hat = hat
    end
end