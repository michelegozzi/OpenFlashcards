class AddUserToApiKeys < ActiveRecord::Migration[5.2]
  def change
    add_reference :api_keys, :user, foreign_key: true
  end
end
