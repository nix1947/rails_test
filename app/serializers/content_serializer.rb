class ContentSerializer < ActiveModel::Serializer
  attributes :id, :type, :project_id, :title, :content_type, :created_at, :updated_at
end
