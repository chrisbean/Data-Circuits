require 'pg'

class Lemur
  def initialize(name)
    @name = name
  end
  def jump
    "Jump Jump Jump Jump"
  end
  def to_s
    @name + '... the lemur'
  end
end

conn = PG::Connection.open(:dbname => 'lemur_jungle')
conn.exec("INSERT INTO lemurs (name) VALUES ('Lichard DeGray')")
conn.exec("INSERT INTO lemurs (name) VALUES ('Kathew Bod')")
rows = conn.exec("SELECT * FROM lemurs;")
conn.close

# rows vs objects!!!!!!!!!!
lemurs = rows.map {|lemur| Lemur.new(lemur['name']) }
