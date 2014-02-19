class Kluster < ActiveRecord::Base
  has_many :kluster_documents, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :kluster_documents, :allow_destroy => true
end
