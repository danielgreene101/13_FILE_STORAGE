require 'YAML'

carMakes = File.readlines("car-makes.txt")

carModels = File.readlines("car-models.txt")


carsIn = Hash.new 

carMakes.each do |x|
	carsIn[x.chomp] = Array.new
	for i in carModels
		newCombo = i.chomp
		if newCombo[0] === x[0]
			carsIn[x.chomp] << newCombo.split('=')[1]
		end
	end
end

puts carsIn

# THANK YOU ADAM!! He helped a lot.