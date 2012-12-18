class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.timestamp :publishing_date
      t.references :person

      t.timestamps
    end
    add_index :posts, :person_id
    execute "ALTER TABLE dbo.posts ADD CONSTRAINT FK_posts_people_cascade_delete FOREIGN KEY (person_id) REFERENCES dbo.people(id) ON DELETE CASCADE"
  end
end
