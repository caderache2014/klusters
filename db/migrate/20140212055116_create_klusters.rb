class CreateKlusters < ActiveRecord::Migration
  def change
    create_table :klusters do |t|
      t.belongs_to :user
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
