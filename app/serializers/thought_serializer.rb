class ThoughtSerializer < ActiveModel::Serializer 
    attr :id, :title, :description, :image
    belongs_to :folder 
end