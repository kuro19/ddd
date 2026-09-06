module CBS

    def self.pas

		pas = UI::WebDialog.new( 'pas', true, 'pas',400, 500, 222, 222, true )
		path = File.join(File.dirname(__FILE__), "webtool", "pas.html")	 
		pas.set_file path # "pas"
		 
		pas.show
		
		pas.add_action_callback("pas") { |dialog,arg|
		
			v = arg.to_s.split(",")
			xx = Float(v[0].strip)/ 25.4
			hh = Float(v[1].strip)
			d1 = Float(v[2].strip)/ 25.4
			

			pa = nav10 # part name

			if hh > 18
				hh = 18
			end

				zz = hh*127.mm



			##
			model = Sketchup.active_model
			  model.start_operation pa5
			  entities = model.active_entities
			  group1 = entities.add_group
			  entities = group1.entities

				pts = []
			pts[0] = [0.mm, 0.mm, 0.mm]
			pts[1] = [xx, 0.mm, 0.mm]
			pts[2] = [xx, d1, 0.mm]
			pts[3] = [0.mm,d1, 0.mm]


				base = entities.add_face pts
			base.pushpull -zz
				model.commit_operation
			group1.name = pa5



			model = Sketchup.active_model
			  model.start_operation pa5
			  entities = model.active_entities
			  group2 = entities.add_group
			  entities = group2.entities

				pts = []
			pts[0] = [0.mm-1.mm, d1, 0.mm]
			pts[1] = [d1, d1, 0.mm]
			pts[2] = [d1, d1+80.mm, 0.mm]
			pts[3] = [0.mm-1.mm, d1+80.mm, 0.mm]


				base = entities.add_face pts
			base.pushpull -zz
				model.commit_operation
			group2.name = pa5

			ent = Sketchup.active_model.entities
			group = ent.add_group group1, group2
			pas.close
		}

	end

	file_loaded("pas.rb")

end
