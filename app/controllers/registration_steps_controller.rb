class RegistrationStepsController < ApplicationController


    include Wicked::Wizard
    steps :company_general, :company_images, :practitioners_general, :practitioners_professions, :practitioners_educations



    def show
   @user = current_user    
   render_wizard 
    end
 


    def update
      @user = current_user
      # Change @user.attributes(user_params) by @user.update_attributes(user_params)
      @user.update_attributes(user_params)
      render_wizard @user
    end






private
def user_params

  params.require(:user).permit(:gender, :clinic_logo, :practitioner_image, :first_name, :last_name, :email, :password, :password_confirmation, :phone, :clinic_name, :clinic_address, :clinic_zip_code, :clinic_municipality, :clinic_about, :clinic_mail, :clinic_phone, :clinic_website, :clinic_city, :practitioner_first_name, :practitioner_last_name, :practitioner_description, :practitioner_mail, :practitioner_phone, :practitioner_website, :public_health_insurance, clinic_images: [], professions: [])

end



end



