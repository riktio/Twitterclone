class Favorite < ApplicationRecord
	belongs_to :user
	belongs_to :tweet

	validates :user, presence: true
	validates :user_id, uniqueness: { scope: :tweet_id }
	validates :tweet, presence: true

	validates :follower, presence: true
	validates :inverse_follower, presence: true
	validates :inverse_follower_id, uniqueness: { scope: :follower_id }
end
