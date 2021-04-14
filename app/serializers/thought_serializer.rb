class ThoughtSerializer < ActiveModel::Serializer 
    attributes :id, :title, :description, :image
    belongs_to :folder 
end