class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :loads, :owner_id, :user_id
  end
end
