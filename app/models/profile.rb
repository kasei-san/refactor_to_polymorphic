class Profile < ActiveRecord::Base
  belongs_to :user

  before_save :set_profilable_id

  def set_profilable_id
    if self.has_attribute?(:profilable_id)
      self.profilable_id   = self.user_id
      self.profilable_type = 'User'
    end
  end
end
