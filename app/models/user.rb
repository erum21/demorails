class User < ActiveRecord::Base
	attr_accessible :name, :email
	has_many :microposts
	
	
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	
	
	validates_presence_of :name, :email
	validates_length_of :name, :within => 3..20, :on => :create, :message => "must be present"
	validates_format_of :email, :with => EmailRegex
	validates_uniqueness_of :email, :case_sensitive => false
	
	
end
