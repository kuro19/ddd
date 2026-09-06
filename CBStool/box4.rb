module CBS

	def self.box4

		box4 = UI::WebDialog.new( 'box4', true, 'box4',400, 500, 222, 222, true )
		path = File.join(File.dirname(__FILE__), "webtool", "box4.html")	
		box4.set_file path # "box4"
		box4.show
		box4.add_action_callback("box4") { |dialog,arg|
		
			v = arg.to_s.split(",")
			xx = Float(v[0].strip)/ 25.4
			yy = Float(v[1].strip)/ 25.4
			zz = Float(v[2].strip)/ 25.4
			
			model = Sketchup.active_model
			definitions = model.definitions
			modpos =      0
			if (modpos == 0 )
				model.start_operation("box4")
				 modpos = definitions.add
				 entities = modpos.entities
				 gitter = entities.add_face([0,0,0],[0,xx,0],[0,xx,yy],[0,0,yy])
				 gitter.pushpull zz
				 modpos.name = pa7
				model.commit_operation
			end
		box4.close
		Sketchup.active_model.place_component modpos, false
	}


	end

	#-----------------------------------------------------------------------------

	file_loaded("box4.rb")

end
