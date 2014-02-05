class CreateKlusters < ActiveRecord::Migration
  def change
    create_table :klusters do |t|
      t.string :name
      t.string :document_title
      t.string :document_description
      t.timestamps
    end
  end
end
