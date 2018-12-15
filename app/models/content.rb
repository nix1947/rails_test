class Content < ApplicationRecord
  validates :title, presence: true

  enum content_type: [:map, :blueprint, :marker, :mapping, :length, :area, :volume], _prefix: true

  belongs_to :project


  def type
    Content.table_name 
  end 
 
end


