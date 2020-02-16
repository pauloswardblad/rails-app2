class Article < ApplicationRecord
    validates_presence_of :title
end

class Article < ApplicationRecord
    validates_presence_of :title, :content
end
  
