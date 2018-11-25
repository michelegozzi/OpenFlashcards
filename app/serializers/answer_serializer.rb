class AnswerSerializer < ActiveModel::Serializer
  attributes :text, :id
  belongs_to :question
end