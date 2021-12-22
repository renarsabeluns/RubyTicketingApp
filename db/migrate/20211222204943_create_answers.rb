class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.text :content
      t.integer :task_id
      t.integer :user_id
      t.timestamps
    end
  end
end
