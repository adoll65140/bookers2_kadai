class Book < ApplicationRecord
	belongs_to :user
	has_many :book_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	# has_many :favorites, dependent: :destroy追記　関連付け

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  # def favorited_by?(user)
   # favorites.where(user_id: user.id).exists?
  # end 追記　favorited_by?メソッド　引数がテーブルに存在するかどうか

	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}
end
