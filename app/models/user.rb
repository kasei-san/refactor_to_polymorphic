class User < ActiveRecord::Base
  has_one :profile, :as => :profilable
  accepts_nested_attributes_for :profile
end
