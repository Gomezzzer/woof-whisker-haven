class Pet
  attr_accessor :name, :species, :adoption_status

  def initialize(name, species)
    @name = name
    @species = species
    @adoption_status = 'Available'
  end
end

class PetAdoptionCenter
  attr_accessor :pets

  def initialize
    @pets = []
  end

  def add_pet(name, species)
    pet = Pet.new(name, species)
    @pets << pet
    puts "#{name} the #{species} has been added to the adoption center."
  end

  def view_available_pets
    available_pets = @pets.select { |pet| pet.adoption_status == 'Available' }
    if available_pets.empty?
      puts 'No pets available for adoption at the moment.'
    else
      puts 'Available Pets:'
      available_pets.each { |pet| puts "#{pet.name} - #{pet.species}" }
    end
  end

  # Additional methods for updating and simulating adoption can be added

end

adoption_center = PetAdoptionCenter.new
adoption_center.add_pet('Buddy', 'Dog')
adoption_center.add_pet('Whiskers', 'Cat')


puts 'Enter the name of the pet:'
pet_name = gets.chomp

puts 'Enter the type of the pet:'
pet_species = gets.chomp

adoption_center.add_pet(pet_name, pet_species)

adoption_center.view_available_pets
