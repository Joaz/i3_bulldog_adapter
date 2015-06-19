class Carriage < CrystalScad::Printed
	def initialize()
	end

	def part(show)
		import("lib/printed/x-carriage.stl").rotate(y:-90,z:180).translate(z:50)
	end

end	
