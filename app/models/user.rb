class User < ApplicationRecord
  rolify
  has_one_attached :avatar
  belongs_to :city, optional:true
  belongs_to :gender, optional: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first
    # Uncomment the section below if you want users to be created if they don't exist
<<<<<<< HEAD
    unless user
      user = User.create(
         name: data['name'],
         email: data['email'],
         firstname: data['first_name'],
         lastname: data['last_name'],
         password: Devise.friendly_token[0,20]
      )

    end
    user
=======
      unless user
          user = User.create(
            email: data['email'],
            firstname: data['first_name'],
            lastname: data['last_name'],
            avatar:  data['picture'],
            password: Devise.friendly_token[0,20]
          )
      end
>>>>>>> develop
  end
end
