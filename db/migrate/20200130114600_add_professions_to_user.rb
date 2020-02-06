class AddProfessionsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :professions, :string
  end
end
