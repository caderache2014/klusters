class AddAttachmentDocumentToKlusters < ActiveRecord::Migration
  def self.up
    change_table :klusters do |t|
      t.attachment :document
    end
  end

  def self.down
    drop_attached_file :klusters, :document
  end
end
