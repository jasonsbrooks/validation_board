class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user
  validate :word_count_is_less_than_6
private

	def word_count_is_less_than_6
		errors[:Micropost] << "too many words" if content.split.size > 5
	end
end
