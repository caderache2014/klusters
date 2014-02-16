class CreateKlusterDocuments < ActiveRecord::Migration
  def change
    create_table :kluster_documents do |t|
      t.belongs_to :user
      t.belongs_to :kluster
      t.string :title
      t.string :description
      t.string    :document_file_name
      t.string    :document_content_type
      t.integer   :document_file_size
      t.datetime  :document_updated_at
      t.datetime  :document_created_at
      t.timestamps
    end
  end
end
