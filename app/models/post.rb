class Post < ActiveRecord::Base
  attr_accessible :title

  self.per_page = 10
end
