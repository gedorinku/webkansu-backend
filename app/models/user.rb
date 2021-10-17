# == Schema Information
#
# Table name: users
#
#  id                  :bigint           not null, primary key
#  provider            :string           default("email"), not null
#  uid                 :string           default(""), not null
#  encrypted_password  :string           default(""), not null
#  remember_created_at :datetime
#  email               :string
#  tokens              :json
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :user_novel_ownerships, dependent: :destroy
end
