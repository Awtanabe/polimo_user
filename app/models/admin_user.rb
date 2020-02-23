class AdminUser < ApplicationRecord
  has_many :messages, as: :messageable
end
