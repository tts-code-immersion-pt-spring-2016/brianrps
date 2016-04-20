#Team

class Person

attr_accessor :first_name, :last_name, :occupation

  def initialize(first_name, last_name, occupation)
    @first_name = first_name
    @last_name = last_name
    @occupation = occupation
  end
  def list_attributes
    return "#{@first_name} #{@last_name} is a #{@occupation}"
  end
end

class SuperHero < Person
  def secret_identity
    return "#{@first_name} #{@last_name}"
  end
end

# good_guy = Person.new("Jim", "Gordon", "Detective")
# puts good_guy.list_attributes

batman = SuperHero.new("Bruce", "Wayne", "Batman")
puts batman.list_attributes
puts batman.secret_identity
