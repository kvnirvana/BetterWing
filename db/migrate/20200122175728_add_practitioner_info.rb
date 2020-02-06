class AddPractitionerInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :practitioner_first_name, :string
    add_column :users, :practitioner_last_name, :string
    add_column :users, :practitioner_description, :string
    add_column :users, :practitioner_mail, :string
    add_column :users, :practitioner_phone, :string
    add_column :users, :practitioner_website, :string
    add_column :users, :practitioner_professions, :string
    add_column :users, :practitioner_specialities, :string
    add_column :users, :practitioner_service_name, :string
    add_column :users, :practitioner_service_description, :string
    add_column :users, :practitioner_service_minutes, :string
    add_column :users, :practitioner_service_price, :string
    add_column :users, :practitioner_education_name, :string
    add_column :users, :practitioner_education_place, :string  
    add_column :users, :practitioner_education_year, :string  
    add_column :users, :practitioner_memberships, :string  
    add_column :users, :practitioner_awards_name, :string  
    add_column :users, :practitioner_awards_year, :string 

end
end