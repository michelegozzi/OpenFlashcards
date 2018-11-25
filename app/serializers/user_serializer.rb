
class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :api_keys

  def api_keys
    object.api_keys.all do |api_key|
      ApiKeySerializer.new(api_key, scope: scope, root: false)
    end
  end
  
  has_many :api_keys
  
end

