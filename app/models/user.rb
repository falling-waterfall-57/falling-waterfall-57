class User < ActiveRecord::Base
  validates_uniqueness_of :email, :message => "This email has already been registered."
end
