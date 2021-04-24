class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false, comment: 'タイトル'
      t.text :content, null: false, comment: 'コンテンツ'
      t.string :slug, null: false, comment: 'idの代替えにできる'

      t.timestamps
    end
  end
end
