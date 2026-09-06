module CBS

	def self.box5

		box5 = UI::WebDialog.new( 'box5', true, 'box5',400, 500, 222, 222, true )
		path = File.join(File.dirname(__FILE__), "webtool", "box5.html")	
		box5.set_file path # "box5"
		box5.show
		box5.add_action_callback("box5") { |dialog,arg|
		
			v = arg.to_s.split(",")
			xx = Float(v[0].strip)/ 25.4
			yy = Float(v[1].strip)/ 25.4
			zz = Float(v[2].strip)/ 25.4
			
			model = Sketchup.active_model
			definitions = model.definitions
			modpos =      0
			if (modpos == 0 )
				model.start_operation("box5")
				 modpos = definitions.add
				 entities = modpos.entities
				 gitter = entities.add_face([0,0,0],[0,xx,0],[0,xx,yy],[0,0,yy])
				 gitter.pushpull zz
				 modpos.name = pa3
				model.commit_operation
			end
		box5.close
		Sketchup.active_model.place_component modpos, false
	}


	end

	#-----------------------------------------------------------------------------


	file_loaded("box5.rb")

end
