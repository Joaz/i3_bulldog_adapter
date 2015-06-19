class Adapter < CrystalScad::Printed
	def initialize()
		@height=7		
		@side_thickness=7
	end

	def part(show)
		res = cube([x=95,46+0.5,@height]).translate(y:-0.5)
		
		# hole for extruder

		res -= cube([23+5,35+10,@height+0.2]).translate(x:19-5,y:5,z:-0.1)

		res -= cylinder(d:3.9,h:15).translate(x:2.0+3.3/2,y:18.3+3.3/2,z:-0.1)		
		res -= cylinder(d:3.9,h:15).translate(x:2.0+3.3/2,y:28.3+3.3/2,z:-0.1)		
		
		res -= cylinder(d:3.9,h:15).translate(x:51.7+3.3/2,y:18.3+3.3/2,z:-0.1)		
		res -= cylinder(d:3.9,h:15).translate(x:51.7+3.3/2,y:28.3+3.3/2,z:-0.1)		
		

		res += cube([x,@side_thickness,45]).translate(y:-@side_thickness-0.5)
	
    # carriage screws

		res -= cylinder(d:3.9,h:20).rotate(x:90).translate(x:29,z:30)
		res -= cylinder(d:3.9,h:20).rotate(x:90).translate(x:29+30,z:30)
		res -= cylinder(d:3.9,h:20).rotate(x:90).translate(x:29+50,z:30)


		# make it easier to print

		res -= chamfer(4,@height).translate(y:46)
		res -= chamfer(4,@height).translate(x:x,y:46)
		
		# cut
		res -= chamfer(4,@height).translate(x:14,y:46)
		res -= chamfer(4,@height).translate(x:14+28,y:46)
	
	
		res -= chamfer(4,60).translate(y:-@side_thickness-0.5)
		res -= chamfer(4,60).translate(x:x,y:-@side_thickness-0.5)

		res

	end
	
	def chamfer(size,height)
		cube([size,size,height+0.2]).rotate(z:45).translate(y:-Math.sqrt(size**2+size**2)/2,z:-0.1)
	end


end	
