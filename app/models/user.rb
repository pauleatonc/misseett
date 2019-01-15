class User < ApplicationRecord
  rolify
  has_one_attached :avatar
  has_many :projects
  has_many :products, through: :projects

  belongs_to :city, optional: true
  belongs_to :gender, optional: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  after_create :assign_default_role

    def self.from_omniauth(access_token)
      data = access_token.info
      user = User.where(email: data['email']).first

      # Uncommentthesectionbelowifyouwantusersto be created if they don't exist
        unless user
            user = User.create(
              email: data['email'],
              firstname: data['first_name'],
              lastname: data['last_name'],
              avatar:  data['picture'],
              password: Devise.friendly_token[0, 20]
            )
        end
        user
    end

    def update_without_password(params, *options)
     if params[:password].blank?
       params.delete(:password)
       params.delete(:password_confirmation) if params[:password_confirmation].blank?
     end
     result = update_attributes(params, *options)
     clean_up_passwords
     result
   end

   def assign_default_role
     self.add_role(:regular_user) if self.roles.blank?
   end
end
