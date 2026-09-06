module CBS
	 
	def self.ot
	 
	 
		ot = UI::WebDialog.new( 'ot', true, 'ot',400, 500, 222, 222, true )
		path = File.join(File.dirname(__FILE__), "webtool", "ot.html")	
		ot.set_file path 
		 
		ot.show
		ot.add_action_callback("ot") { |dialog,arg|
			
			v = arg.to_s.split(",")
			xx = Float(v[0].strip)/ 25.4
			hh = Float(v[1].strip)
			yy = Float(v[2].strip)/ 25.4
			d1 = Float(v[3].strip)/ 25.4
			z1 = Float(v[4].strip)/ 25.4
			r1 = Float(v[5].strip)/ 25.4

			pa = nav3 # part name

			if hh > 9;	hh = 9;	end
			if xx > 1200.mm; xx = 1200.mm; end
			if xx < 275.mm;  xx = 275.mm;  end
			if yy > 700.mm;  yy = 700.mm;  end
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

			##fro
		   
		    if xx < 550.mm
			  
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
		   
		    end   

			if xx > 549.mm && xx < 750.mm

				 result = UI.messagebox  nav25+"2 x ?", MB_YESNO
					
				 if result == 6 

				  model = Sketchup.active_model
				  model.start_operation pa7
				  entities = model.active_entities
				  group61 = entities.add_group
				  entities = group61.entities

				 pts = []
				pts[0] = [1.mm, -2.mm , 0.mm+zz]
				pts[1] = [xx/2 -1.mm, -2.mm, 0.mm+zz]
				pts[2] = [xx/2 -1.mm, -21.mm, 0.mm+zz]
				pts[3] = [1.mm, -21.mm, 0.mm+zz]

					face = entities.add_face pts
					status = face.pushpull +zz, true
					group61.name = pa + pa7 
					
					
					model = Sketchup.active_model
				  model.start_operation pa7
				  entities = model.active_entities
				  group62 = entities.add_group
				  entities = group62.entities

				 pts = []
				pts[0] = [xx/2 + 1.mm, -2.mm , 0.mm+zz]
				pts[1] = [xx-1.mm, -2.mm, 0.mm+zz]
				pts[2] = [xx-1.mm, -21.mm, 0.mm+zz]
				pts[3] = [xx/2 + 1.mm, -21.mm, 0.mm+zz]

					face = entities.add_face pts
					status = face.pushpull +zz, true
					group62.name = pa + pa7 
					ent = Sketchup.active_model.entities
					group6 = ent.add_group group61, group62
				 
				end
					
				if result != 6  
				  
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
			   
				end
		   
		   end
		  
			if xx > 749.mm
			  
				model = Sketchup.active_model
				  model.start_operation pa7
				  entities = model.active_entities
				  group61 = entities.add_group
				  entities = group61.entities

				 pts = []
				pts[0] = [1.mm, -2.mm , 0.mm+zz]
				pts[1] = [xx/2 -1.mm, -2.mm, 0.mm+zz]
				pts[2] = [xx/2 -1.mm, -21.mm, 0.mm+zz]
				pts[3] = [1.mm, -21.mm, 0.mm+zz]

				face = entities.add_face pts
				status = face.pushpull +zz, true
				group61.name = pa + pa7 
					
					
					model = Sketchup.active_model
				  model.start_operation pa7
				  entities = model.active_entities
				  group62 = entities.add_group
				  entities = group62.entities

				 pts = []
				pts[0] = [xx/2 + 1.mm, -2.mm , 0.mm+zz]
				pts[1] = [xx-1.mm, -2.mm, 0.mm+zz]
				pts[2] = [xx-1.mm, -21.mm, 0.mm+zz]
				pts[3] = [xx/2 + 1.mm, -21.mm, 0.mm+zz]

				face = entities.add_face pts
				status = face.pushpull +zz, true
				group62.name = pa + pa7 
				ent = Sketchup.active_model.entities
				group6 = ent.add_group group61, group62
			 
			end
		  
		  
		  
						
			## tab 
			if zz == 4*127.mm ||  zz == 5*127.mm 

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

			elsif zz == 6*127.mm ||  zz == 7*127.mm

				model = Sketchup.active_model
				  model.start_operation pa3
				  entities = model.active_entities
				  group2t= entities.add_group
				  entities = group2t.entities

					pts = []
				pts[0] = [d1, 15.mm, zz/3]
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

			elsif zz == 8*127.mm ||  zz == 9*127.mm

				model = Sketchup.active_model
				  model.start_operation pa3
				  entities = model.active_entities
				  group2t= entities.add_group
				  entities = group2t.entities

					pts = []
				pts[0] = [d1, 15.mm, zz/4]
				pts[1] = [xx-d1, 15.mm , zz/4 ]
				pts[2] = [xx-d1, yy, zz/4]
				pts[3] = [d1, yy, zz/4 ]


				   face = entities.add_face pts
				status = face.pushpull   -z1, true
				group2t.name = pa + pa3
					
				model = Sketchup.active_model
				  model.start_operation pa3
				  entities = model.active_entities
				  group3t= entities.add_group
				  entities = group3t.entities

					pts = []
				pts[0] = [d1, 15.mm, zz/4*2 ]
				pts[1] = [xx-d1, 15.mm , zz/4*2 ]
				pts[2] = [xx-d1, yy, zz/4*2 ]
				pts[3] = [d1, yy, zz/4*2 ]


				   face = entities.add_face pts
				status = face.pushpull   -z1, true
				group3t.name = pa + pa3
					

				model = Sketchup.active_model
				  model.start_operation pa3
				  entities = model.active_entities
				  group4t= entities.add_group
				  entities = group4t.entities

					pts = []
				pts[0] = [d1, 15.mm, zz/4*3 ]
				pts[1] = [xx-d1, 15.mm , zz/4*3 ]
				pts[2] = [xx-d1, yy, zz/4*3 ]
				pts[3] = [d1, yy, zz/4*3 ]


				   face = entities.add_face pts
				status = face.pushpull   -z1, true
				group4t.name = pa + pa3		
							

				ent = Sketchup.active_model.entities
				group = ent.add_group group1, group2, group2t, group3t, group4t, group3, group4, group5, group6
			else
				ent = Sketchup.active_model.entities
				group = ent.add_group group1, group2, group3, group4, group5, group6		
			end

			ot.close 
		}
		
	end 	 

	file_loaded("ot.rb")

end
