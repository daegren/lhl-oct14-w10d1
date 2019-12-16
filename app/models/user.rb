class User < ApplicationRecord
  has_many :posts, inverse_of: :author, foreign_key: :author_id
end
