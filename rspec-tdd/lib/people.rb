class People
  attr_accessor :name, :age
  attr_reader :status

  def happy!
    @status = "Feeling Happy!"
  end

  def bad!
    @status = "Feeling Bad!"
  end

  def glad!
    @status = "Feeling Glad!"
  end
end