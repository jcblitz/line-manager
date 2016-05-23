class Line < ActiveRecord::Base
  serialize :people, JSON
end
