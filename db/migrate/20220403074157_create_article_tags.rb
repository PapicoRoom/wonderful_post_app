class CreateArticleTags < ActiveRecord::Migration[6.0]
  def change
    create_table :article_tags do |t|

      t.references :tag, foreign_key: true
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
