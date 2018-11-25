class TopicSerializer < ActiveModel::Serializer
  attributes :name, :id, :description, :questions
  has_many :questions
  
  def questions
    object.questions.all do |question|
      QuestionSerializer.new(question, scope: scope, root: false)
    end
  end
  
  #self.root = true
  
  #def json_key
  #  "topics"
  #end
end