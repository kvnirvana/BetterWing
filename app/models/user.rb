class User < ApplicationRecord
  
  def current_step?(step_key) current_step == step_key end

    enum gender: { Mand: 0, Kvinde: 1 }

    def self.genders_for_select
    genders.keys.map{ |x| [x.humanize, x] }
    end

    has_one_attached :clinic_logo
    accepts_nested_attributes_for :clinic_logo_attachment, allow_destroy: true

    has_one_attached :practitioner_image
    has_many_attached :clinic_images

  
    
    # Note that implicit association has a plural form in this case
    scope :with_eager_loaded_images, -> { eager_load(images_attachments: :blob) }
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         after_create :send_admin_mail
         def send_admin_mail
           UserMailer.send_welcome_email(self).deliver_later
         end


end


