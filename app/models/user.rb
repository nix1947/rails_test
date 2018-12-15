class User < ApplicationRecord
  has_secure_password 


  # Relationship 
  has_many :projects  

  # Basic password validation, configure to your liking.
  # validates_presence_of :name 
  # validates_presence_of :password 
  # validates_presence_of :email 
  # validates_length_of :password, maximum: 72, minimum: 8, allow_blank: false
  # validates_confirmation_of :password, allow_nil: true, allow_blank: false


  # before_validation { 
  #   (self.email = self.email.to_s.downcase)
  # }
  

  # # Make sure email is present and unique.
  # validates_presence_of     :email
  # validates_uniqueness_of   :email


  # Methods 
  def type
    User.table_name
  end


end
