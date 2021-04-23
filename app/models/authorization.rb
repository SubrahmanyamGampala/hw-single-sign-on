class Authorization < ActiveRecord::Base
  belongs_to :user  # should be there already
  validates :provider, :uid, :presence => true
  
end

class User < ActiveRecord::Base
  has_many :authorizations, :dependent => :destroy
  validates :name, :email, :presence => true
  
end


