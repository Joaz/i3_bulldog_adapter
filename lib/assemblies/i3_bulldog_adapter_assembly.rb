class I3_bulldog_adapterAssembly < CrystalScad::Assembly

	def part(show)
		
		adapter = Adapter.new
		res = adapter.show
			
#		res += Bulldog.new.show.translate(z:adapter.height)
#		res += Carriage.new.show.translate(y:-20,x:25)


	end

end
