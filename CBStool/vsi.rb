module CBS

	def self.vsi

		vsi = UI::WebDialog.new( 'vsi', true, 'vsi',400, 500, 222, 222, true )
		path = File.join(File.dirname(__FILE__), "webtool", "vsi.html")
		vsi.set_file path # "vsi"
		 
		vsi.show
		
		vsi.add_action_callback("vsi") { |dialog,arg|
		
			v = arg.to_s.split(",")
			xx = Float(v[0].strip)/ 25.4
			hh = Float(v[1].strip)
			d1 = Float(v[2].strip)/ 25.4
			

			pa = nav9 # part name

				if hh > 18
					hh = 18
				end

				zz = hh*127.mm


			##


			model = Sketchup.active_model
			  model.start_operation pa2
			  entities = model.active_entities
			  group = entities.add_group
			  entities = group.entities
			  
				pts = []
			pts[0] = [0.mm, 0.mm, 0.mm]
			pts[1] = [d1, 0.mm, 0.mm]
			pts[2] = [d1, xx, 0.mm]
			pts[3] = [0.mm, xx, 0.mm]

		 
			face = entities.add_face pts
			status = face.pushpull -zz, true
			group.name = pa2
			vsi.close
		}
	 
	end



	#-----------------------------------------------------------------------------
	file_loaded("vsi.rb")

end

