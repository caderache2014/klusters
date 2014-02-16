class User < ActiveRecord::Base
  has_many :kluster_documents, dependent: :destroy
  has_many :klusters, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise  :registerable,:database_authenticatable,
         :recoverable, :rememberable, :trackable
         ##, :validatable
  #validates_presence_of :email, :message=>"Please enter Email!"       
end
