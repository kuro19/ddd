module CBS

	def self.ao
	 
		ao = UI::WebDialog.new( 'ao', true, 'ao',400, 500, 222, 222, true )
		path = File.join(File.dirname(__FILE__), "webtool", "ao.html")	
		ao.set_file path  
		 
		ao.show
		ao.add_action_callback("ao") { |dialog,arg|
		
			v = arg.to_s.split(",")
			xx = Float(v[0].strip)/ 25.4
			hh = Float(v[1].strip)
			yy = Float(v[2].strip)/ 25.4
			d1 = Float(v[3].strip)/ 25.4
			z1 = Float(v[4].strip)/ 25.4
			r1 = Float(v[5].strip)/ 25.4

			pa = nav5 # part name

			if hh > 9;	hh = 9;	end
			if xx > 600.mm; xx = 600.mm; end
			if xx < 400.mm;  xx = 400.mm;  end
			if yy > 600.mm;  yy = 600.mm;  end
			if yy < 80.mm;  yy = 80.mm;  end

				zz = hh*127.mm	
					
			model = Sketchup.active_model
			  model.start_operation pa2
			  entities = model.active_entities
			  group1 = entities.add_group
			  entities = group1.entities

				pts = []
			pts[0] = [0.mm, 0.mm, 0.mm]
			pts[1] = [d1, 0.mm, 0.mm]
			pts[2] = [d1, yy, 0.mm]
			pts[3] = [0.mm, yy, 0.mm]


					face = entities.add_face pts
				status = face.pushpull -zz, true
				group1.name = pa + pa2


		##
			model = Sketchup.active_model
			  model.start_operation pa3
			  entities = model.active_entities
			  group2 = entities.add_group
			  entities = group2.entities

				pts = []
			pts[0] = [0.mm+d1, 0.mm, 0.mm]
			pts[1] = [xx-d1, 0.mm,  0.mm]
			pts[2] = [xx-d1, yy,  0.mm]
			pts[3] = [0.mm+d1, yy,  0.mm]


				   face = entities.add_face pts
				status = face.pushpull -z1, true
				group2.name = pa + pa3


		##
			model = Sketchup.active_model
			  model.start_operation pa3
			  entities = model.active_entities
			  group3 = entities.add_group
			  entities = group3.entities

				pts = []
			pts[0] = [0.mm+d1, 0.mm, 0.mm+zz]
			pts[1] = [0.mm+xx-d1, 0.mm, 0.mm+zz]
			pts[2] = [0.mm+xx-d1, yy, 0.mm+zz]
			pts[3] = [0.mm+d1, yy, 0.mm+zz]


					face = entities.add_face pts
				status = face.pushpull -z1, true
				group3.name = pa + pa3


		##
			model = Sketchup.active_model
			  model.start_operation pa2
			  entities = model.active_entities
			  group4 = entities.add_group
			  entities = group4.entities

				pts = []
			pts[0] = [xx-d1, 0.mm , 0.mm]
			pts[1] = [xx, 0.mm, 0.mm]
			pts[2] = [xx, yy, 0.mm]
			pts[3] = [xx-d1, yy, 0.mm]


				face = entities.add_face pts
				status = face.pushpull -zz, true
				group4.name = pa + pa2

		##
			model = Sketchup.active_model
			  model.start_operation pa4
			  entities = model.active_entities
			  group5 = entities.add_group
			  entities = group5.entities

				pts = []
			pts[0] = [0.mm, 0.mm+yy, 0.mm+zz]
			pts[1] = [0.mm+xx, 0.mm+yy, 0.mm+zz]
			pts[2] = [0.mm+xx, 0.mm+yy+r1, 0.mm+zz]
			pts[3] = [0.mm, 0.mm+yy+r1, 0.mm+zz]

				face = entities.add_face pts
				status = face.pushpull -zz, true
				group5.name = pa + pa4

		##

			model = Sketchup.active_model
			  model.start_operation pa7
			  entities = model.active_entities
			  group6 = entities.add_group
			  entities = group6.entities

			 pts = []
			pts[0] = [1.mm, -2.mm , 0.mm+zz]
			pts[1] = [xx-1.mm, -2.mm, 0.mm+zz]
			pts[2] = [xx-1.mm, -21.mm, 0.mm+zz]
			pts[3] = [1.mm, -21.mm, 0.mm+zz]

				face = entities.add_face pts
				status = face.pushpull +zz, true
				group6.name = pa + pa7

				
			## tab 
			if zz == 4*127.mm

				model = Sketchup.active_model
				  model.start_operation pa3
				  entities = model.active_entities
				  group2t= entities.add_group
				  entities = group2t.entities

					pts = []
				pts[0] = [d1, 15.mm, zz/2 ]
				pts[1] = [xx-d1, 15.mm , zz/2 ]
				pts[2] = [xx-d1, yy, zz/2 ]
				pts[3] = [d1, yy, zz/2 ]


					   face = entities.add_face pts
					status = face.pushpull   -z1, true
					group2t.name = pa + pa3

				ent = Sketchup.active_model.entities
				group = ent.add_group group1, group2, group2t, group3, group4, group5, group6

			else 

				if zz >= 5*127.mm

					model = Sketchup.active_model
					  model.start_operation pa3
					  entities = model.active_entities
					  group2t= entities.add_group
					  entities = group2t.entities

						pts = []
					pts[0] = [d1, 15.mm, zz/3 ]
					pts[1] = [xx-d1, 15.mm , zz/3 ]
					pts[2] = [xx-d1, yy, zz/3]
					pts[3] = [d1, yy, zz/3 ]


						   face = entities.add_face pts
						status = face.pushpull   -z1, true
						group2t.name = pa + pa3
						
					model = Sketchup.active_model
					  model.start_operation pa3
					  entities = model.active_entities
					  group3t= entities.add_group
					  entities = group3t.entities

						pts = []
					pts[0] = [d1, 15.mm, zz/3*2 ]
					pts[1] = [xx-d1, 15.mm , zz/3*2 ]
					pts[2] = [xx-d1, yy, zz/3*2 ]
					pts[3] = [d1, yy, zz/3*2 ]


						   face = entities.add_face pts
						status = face.pushpull   -z1, true
						group3t.name = pa + pa3
						
						

					ent = Sketchup.active_model.entities
					group = ent.add_group group1, group2, group2t, group3t, group3, group4, group5, group6
				else
					ent = Sketchup.active_model.entities
					group = ent.add_group group1, group2, group3, group4, group5, group6		
				end

			end

			ao.close 
		
		}

	end 	 

file_loaded("ao.rb")

end
