class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, defautl: false
  end
end
