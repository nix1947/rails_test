class Project < ApplicationRecord

    # Validation 
    validates_presence_of :title
    has_attached_file :thumbnail, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://ondronemap.com/default.jpg"
    validates_attachment :thumbnail
    do_not_validate_attachment_file_type :thumbnail

    # Model relationship 
    has_many :contents
    belongs_to :user

 

    # methods
    def type
        Project.table_name
    end


     # method to check ownership in project
   def can_modify_user?(user_id)
     false 
  end
end
