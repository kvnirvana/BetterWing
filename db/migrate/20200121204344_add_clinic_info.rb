class AddClinicInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :clinic_name, :string
    add_column :users, :clinic_address, :string
    add_column :users, :clinic_zip_code, :string
    add_column :users, :clinic_municipality, :string
    add_column :users, :clinic_about, :string
    add_column :users, :clinic_mail, :string
    add_column :users, :clinic_phone, :string
    add_column :users, :clinic_website, :string
    add_column :users, :clinic_city, :string
  end
end
