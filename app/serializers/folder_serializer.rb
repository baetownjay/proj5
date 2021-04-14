class FolderSerializer < ActiveModel::Serializer 
    attributes :id, :title, :color
    belongs_to :user
    has_many :thoughts
end