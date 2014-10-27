class CreateTestQuestions < ActiveRecord::Migration
  def change
    create_table :test_questions do |t|
      t.string :question
      t.string :question_type
      t.references :test, index: true

      t.timestamps
    end
  end
end
