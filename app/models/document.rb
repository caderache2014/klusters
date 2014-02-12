class Document < ActiveRecord::Base
  belongs_to :kluster
  belongs_to :user
end
