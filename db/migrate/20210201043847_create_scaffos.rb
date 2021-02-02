class CreateScaffos < ActiveRecord::Migration[6.1]
  def change
    create_table :scaffos do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
