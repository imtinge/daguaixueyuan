class ChangeAdminColum < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :admin, :boolean
    add_column :users, :role, :string
  end
end
