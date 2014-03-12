class User < ActiveRecord::Base
  has_many :kluster_documents, dependent: :destroy
  has_many :klusters, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
