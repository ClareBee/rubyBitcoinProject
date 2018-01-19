require_relative( '../db/sql_runner' )

class Coin

  attr_reader :id
  attr_accessor :name

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO coins
    (
      name
    )
    VALUES
    (
      $1
    )
    RETURNING id;"
    values = [@name]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM coins;"
    values = []
    results = SqlRunner.run( sql, values )
    return results.map { |coin| Coin.new( coin )}
  end

end
