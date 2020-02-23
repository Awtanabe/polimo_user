class User < ApplicationRecord
  has_many :messages, as: :messageable
end
