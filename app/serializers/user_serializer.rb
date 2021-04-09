class UserSerializer < ActiveModel::Serializer 
    attr :username
    has_many :folders 
end