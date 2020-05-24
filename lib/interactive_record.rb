require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  
  def self.table_name
    self.to_s.downcase.pluralize
  end
  
  def self.column_names
    DB[:conn].results_as_hash = true 
    
    table_columns = DB[:conn].execute("PRAGMA table_info(#{table_name})")
    column_names = []
    
    table_columns.each do |col|
      column_names << col["name"]
    end
    
    column_names.compact
  end
  
  def initialize()
  
  
  
  
end