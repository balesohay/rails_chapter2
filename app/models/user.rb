class User < ActiveRecord::Base
	has_many :bloggers
end
