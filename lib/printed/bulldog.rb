class Bulldog < CrystalScad::Printed
	def initialize()
	end

	def part(show)
		# fan mount basic sketch		
		res = cube([105,56,h=4.5])
		
		res -= cylinder(d:3.3,h:15).translate(x:2.0+3.3/2,y:18.3+3.3/2,z:-0.1)		
		res -= cylinder(d:3.3,h:15).translate(x:2.0+3.3/2,y:28.3+3.3/2,z:-0.1)		
		
		res -= cylinder(d:3.3,h:15).translate(x:51.7+3.3/2,y:18.3+3.3/2,z:-0.1)		
		res -= cylinder(d:3.3,h:15).translate(x:51.7+3.3/2,y:28.3+3.3/2,z:-0.1)		
		
	  # bulldog basic sketch

		res += cube([78,42,60-5.7]).translate(x:20,y:7,z:5.7)
		res.color("lightblue")



	end

end	
