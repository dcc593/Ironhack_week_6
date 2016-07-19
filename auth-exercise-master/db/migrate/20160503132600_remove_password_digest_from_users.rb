class RemovePasswordDigestFromUsers < ActiveRecord::Migration
  def change
  	# in terminal to create this model
  	# rails g migration add_password_digest_column_to_users password_digest:string
    remove_column :users, :password_digest, :string
  end
end
