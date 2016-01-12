class CreateSections < ActiveRecord::Migration
  
  def up
    create_table :sections do |t|

      t.column "page_id", :integer

      t.column "name", :string, :limit => 25
      t.column "position", :integer
      t.column "visible", :boolean, :default => false
      t.column "content_type", :string
      t.column "content", :text

      t.timestamps

    end
    add_index("sections", "page_id")
  end

  def down
    drop_table :sections
  end
end
