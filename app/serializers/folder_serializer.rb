class FolderSerializer < ActiveModel::Serializer 
    attr :id, :title, :color
    belongs_to :user
    has_many :thoughts
end