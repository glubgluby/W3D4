class CreateAnswerChoicesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.string :answer
      t.integer :question_id
      t.timestamps
    end
  end
end
