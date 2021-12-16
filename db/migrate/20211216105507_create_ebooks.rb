class CreateEbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :ebooks do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
