class RemoveUserIdColumnOnProfile < ActiveRecord::Migration
  def change
    remove_column :profiles, :user_id
  end
end
