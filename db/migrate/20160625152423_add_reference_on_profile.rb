class AddReferenceOnProfile < ActiveRecord::Migration
  def up
    add_reference :profiles, :profilable, polymorphic: true, index: true

    Profile.all.each do |profile|
      if profile.user
        user = profile.user
        profile.profilable_id   = user.id
        profile.profilable_type = user.class.to_s
        profile.save!
      end
    end
  end

  def down
    remove_reference :profiles, :profilable, polymorphic: true, index: true
  end
end
