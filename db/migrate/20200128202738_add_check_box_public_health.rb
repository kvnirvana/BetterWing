class AddCheckBoxPublicHealth < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :public_health_insurance, :boolean, default: false
  end
end
