class Micropost < ActiveRecord::Base
	attr_accessible :content
	belongs_to :user
	validates :content, :presence => true, :length => { :maximum => 500 }
	validates :user_id, :presence => true
	# DESC is a SQL command for ordering into decreasing order
	default_scope :order => 'microposts.created_at DESC'
end
