module CBS

	def self.box1

		box1 = UI::WebDialog.new( 'box1', true, 'box1',400, 500, 222, 222, true )
		path = File.join(File.dirname(__FILE__), "webtool", "box1.html")	
		box1.set_file path # 
		
		box1.show
		box1.add_action_callback("box1") { |dialog,arg|
		
			v = arg.to_s.split(",")
			xx = Float(v[0].strip)/ 25.4
			yy = Float(v[1].strip)/ 25.4
			zz = Float(v[2].strip)/ 25.4
			
			model = Sketchup.active_model
			definitions = model.definitions
			modpos =      0
			if (modpos == 0 )
				model.start_operation("box1")
				 modpos = definitions.add
				 entities = modpos.entities
				 gitter = entities.add_face([0,0,0],[0,xx,0],[0,xx,yy],[0,0,yy])
				 gitter.pushpull zz
				 modpos.name = pa2
				model.commit_operation
			end
			box1.close
			Sketchup.active_model.place_component modpos, false
		}

	end

	#-----------------------------------------------------------------------------


	file_loaded("box1.rb")
	
end
