class QuestionSerializer < ActiveModel::Serializer
  attributes :text, :id, :answers

  def answers
    object.answers.all do |answer|
      AnswerSerializer.new(answer, scope: scope, root: false)
    end
  end
  
  has_many :answers
  belongs_to :topic
end