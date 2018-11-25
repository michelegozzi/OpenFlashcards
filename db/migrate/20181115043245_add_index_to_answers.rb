class AddIndexToAnswers < ActiveRecord::Migration[5.2]
  def change
	#add_index :answers, :text, :unique => true
  end
end
