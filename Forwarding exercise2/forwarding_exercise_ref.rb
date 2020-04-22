class User
  
  attr_accessor :name, :bio, :age, :password
  
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end

class Auth
    
  attr_reader :candidate_password
  def initialize
    @candidate_password = "123"
  end
  def authenticate(user)
    return true if @candidate_password == user.password
    false
  end

end