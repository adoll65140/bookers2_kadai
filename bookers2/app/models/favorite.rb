class Favorite < ApplicationRecord
  
  belongs_to :user
  belongs_to :book
  # belongs_to :user
  # belongs_to :book 追記　関連付け
end
