class RevisableMigrationGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      revisable_columns = [["revisable_original_id", "integer"], ["revisable_branched_from_id", "integer"], ["revisable_number", "integer"], ["revisable_name", "string"], ["revisable_type", "string"], ["revisable_current_at", "datetime"], ["revisable_revised_at", "datetime"], ["revisable_deleted_at", "datetime"], ["revisable_is_current", "boolean"]]
      
      m.migration_template 'migration.rb', 'db/migrate', :migration_file_name => "make_#{class_name.downcase}_revisable", :assigns => {:cols => revisable_columns}
    end
  end
end
