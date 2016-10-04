class AddParamsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone, :string
    add_column :users, :kvartira, :string
    add_column :users, :message, :string
  end
end
