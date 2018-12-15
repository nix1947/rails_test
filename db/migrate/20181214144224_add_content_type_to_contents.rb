class AddContentTypeToContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :content_type, :string
  end
end
