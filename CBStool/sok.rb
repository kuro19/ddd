module CBS

	def self.sok
		 
		sok = UI::WebDialog.new( 'sok', true, 'sok',400, 500, 222, 222, true )
		path = File.join(File.dirname(__FILE__), "webtool", "sok.html")
		sok.set_file path # "sok"
		 
		sok.show
		
		sok.add_action_callback("sok") { |dialog,arg|
		
			v = arg.to_s.split(",")
			xx = Float(v[0].strip)/ 25.4
			hh = Float(v[1].strip)/ 25.4
			yy = Float(v[2].strip)/ 25.4
			d1 = Float(v[3].strip)/ 25.4
			
			pa = nav15 # part name
			  
			zz = hh
			x1 = (xx/500.mm).round   

			##
			model = Sketchup.active_model
			  model.start_operation pa1
			  entities = model.active_entities
			  group1 = entities.add_group
			  entities = group1.entities
			
				pts = []
			pts[0] = [0.mm, 0.mm, 0.mm]
			pts[1] = [xx, 0.mm, 0.mm]
			pts[2] = [xx, d1, 0.mm]
			pts[3] = [0.mm, d1, 0.mm]

		 
				face = entities.add_face pts
			status = face.pushpull -zz, true
			group1.name = pa1

			model = Sketchup.active_model
			  model.start_operation pa1
			  entities = model.active_entities
			  group2 = entities.add_group
			  entities = group2.entities
			
				pts = []
			pts[0] = [0.mm, d1, 0.mm]
			pts[1] = [d1, d1, 0.mm]
			pts[2] = [d1, d1+yy-d1-d1, 0.mm]
			pts[3] = [0.mm, d1+yy-d1-d1, 0.mm]

			face = entities.add_face pts
			status = face.pushpull -zz, true
			group2.name = pa1


			model = Sketchup.active_model
			  model.start_operation pa1
			  entities = model.active_entities
			  group3 = entities.add_group
			  entities = group3.entities
			
				pts = []
			pts[0] = [xx-d1, d1, 0.mm]
			pts[1] = [xx, d1, 0.mm]
			pts[2] = [xx, d1+yy-d1-d1, 0.mm]
			pts[3] = [xx-d1, d1+yy-d1-d1, 0.mm]

		 
			face = entities.add_face pts
			status = face.pushpull -zz, true
			group3.name = pa1



			model = Sketchup.active_model
			  model.start_operation pa1
			  entities = model.active_entities
			  group4 = entities.add_group
			  entities = group4.entities
			
				pts = []
			pts[0] = [0.mm, yy-d1, 0.mm]
			pts[1] = [xx, yy-d1, 0.mm]
			pts[2] = [xx, yy, 0.mm]
			pts[3] = [0.mm, yy, 0.mm]

		 
			face = entities.add_face pts
			status = face.pushpull -zz, true
			group4.name = pa1


			## zusätzlich Quer

			if x1 == 2
				model = Sketchup.active_model
				  model.start_operation pa1
				  entities = model.active_entities
				  group5 = entities.add_group
				  entities = group5.entities

				 pts = []
				pts[0] = [xx/2, d1, 0.mm]
				pts[1] = [xx/2+d1, d1, 0.mm]
				pts[2] = [xx/2+d1, d1+yy-d1-d1, 0.mm]
				pts[3] = [xx/2, d1+yy-d1-d1, 0.mm]
			  
				face = entities.add_face pts
				status = face.pushpull -zz, true
				group5.name = pa1
				
				ent = Sketchup.active_model.entities	
				group4 = ent.add_group group4, group5	
				sok.close
			end

			if x1 == 3
				model = Sketchup.active_model
				  model.start_operation pa1
				  entities = model.active_entities
				  group6 = entities.add_group
				  entities = group6.entities

				 pts = []
				pts[0] = [xx/3, d1, 0.mm]
				pts[1] = [xx/3+d1, d1, 0.mm]
				pts[2] = [xx/3+d1, d1+yy-d1-d1, 0.mm]
				pts[3] = [xx/3, d1+yy-d1-d1, 0.mm]
			  
				face = entities.add_face pts
				status = face.pushpull -zz, true
				group6.name = pa1
				
				ent = Sketchup.active_model.entities	
				group4 = ent.add_group group4, group6	

				model = Sketchup.active_model
				  model.start_operation pa1
				  entities = model.active_entities
				  group7 = entities.add_group
				  entities = group7.entities

				 pts = []
				pts[0] = [xx/3+xx/3, d1, 0.mm]
				pts[1] = [xx/3+xx/3+d1, d1, 0.mm]
				pts[2] = [xx/3+xx/3+d1, d1+yy-d1-d1, 0.mm]
				pts[3] = [xx/3+xx/3, d1+yy-d1-d1, 0.mm]
			  
				face = entities.add_face pts
				status = face.pushpull -zz, true
				group7.name = pa1
				
				ent = Sketchup.active_model.entities	
				group4 = ent.add_group group4, group7	
					
			end


			if x1 == 4
				model = Sketchup.active_model
				  model.start_operation pa1
				  entities = model.active_entities
				  group8 = entities.add_group
				  entities = group8.entities

				 pts = []
				pts[0] = [xx/4, d1, 0.mm]
				pts[1] = [xx/4+d1, d1, 0.mm]
				pts[2] = [xx/4+d1, d1+yy-d1-d1, 0.mm]
				pts[3] = [xx/4, d1+yy-d1-d1, 0.mm]
			  
				face = entities.add_face pts
				status = face.pushpull -zz, true
				group8.name = pa1

				ent = Sketchup.active_model.entities	
				group4 = ent.add_group group4, group8	

				model = Sketchup.active_model
				  model.start_operation pa1
				  entities = model.active_entities
				  group9 = entities.add_group
				  entities = group9.entities

				 pts = []
				pts[0] = [xx/2, d1, 0.mm]
				pts[1] = [xx/2+d1, d1, 0.mm]
				pts[2] = [xx/2+d1, d1+yy-d1-d1, 0.mm]
				pts[3] = [xx/2, d1+yy-d1-d1, 0.mm]
			  
				face = entities.add_face pts
				status = face.pushpull -zz, true
				group9.name = pa1

				ent = Sketchup.active_model.entities	
				group4 = ent.add_group group4, group9

				model = Sketchup.active_model
				  model.start_operation pa1
				  entities = model.active_entities
				  group10 = entities.add_group
				  entities = group10.entities

				 pts = []
				pts[0] = [xx/4+xx/2, d1, 0.mm]
				pts[1] = [xx/4+xx/2+d1, d1, 0.mm]
				pts[2] = [xx/4+xx/2+d1, d1+yy-d1-d1, 0.mm]
				pts[3] = [xx/4+xx/2, d1+yy-d1-d1, 0.mm]
			  
				face = entities.add_face pts
				status = face.pushpull -zz, true
				group10.name = pa1
				
				ent = Sketchup.active_model.entities	
				group4 = ent.add_group group4, group10	
				sok.close	
			end

			if x1 >= 5
				model = Sketchup.active_model
				  model.start_operation pa1
				  entities = model.active_entities
				  group11 = entities.add_group
				  entities = group11.entities

				 pts = []
				pts[0] = [xx/5, d1, 0.mm]
				pts[1] = [xx/5+d1, d1, 0.mm]
				pts[2] = [xx/5+d1, d1+yy-d1-d1, 0.mm]
				pts[3] = [xx/5, d1+yy-d1-d1, 0.mm]
			  
				face = entities.add_face pts
				status = face.pushpull -zz, true
				group11.name = pa1

				ent = Sketchup.active_model.entities	
				group4 = ent.add_group group4, group11	

				model = Sketchup.active_model
				  model.start_operation pa1
				  entities = model.active_entities
				  group12 = entities.add_group
				  entities = group12.entities

				 pts = []
				pts[0] = [xx/5+xx/5, d1, 0.mm]
				pts[1] = [xx/5+xx/5+d1, d1, 0.mm]
				pts[2] = [xx/5+xx/5+d1, d1+yy-d1-d1, 0.mm]
				pts[3] = [xx/5+xx/5, d1+yy-d1-d1, 0.mm]
			  
				face = entities.add_face pts
				status = face.pushpull -zz, true
				group12.name = pa1

				ent = Sketchup.active_model.entities	
				group4 = ent.add_group group4, group12	

				model = Sketchup.active_model
				  model.start_operation pa1
				  entities = model.active_entities
				  group13 = entities.add_group
				  entities = group13.entities

				 pts = []
				pts[0] = [xx/5+xx/5+xx/5, d1, 0.mm]
				pts[1] = [xx/5+xx/5+xx/5+d1, d1, 0.mm]
				pts[2] = [xx/5+xx/5+xx/5+d1, d1+yy-d1-d1, 0.mm]
				pts[3] = [xx/5+xx/5+xx/5, d1+yy-d1-d1, 0.mm]
			  
					face = entities.add_face pts
				status = face.pushpull -zz, true
				group13.name = pa1
				
				ent = Sketchup.active_model.entities	
				group4 = ent.add_group group4, group13

				model = Sketchup.active_model
				  model.start_operation pa1
				  entities = model.active_entities
				  group14 = entities.add_group
				  entities = group14.entities

				 pts = []
				pts[0] = [xx/5+xx/5+xx/5+xx/5, d1, 0.mm]
				pts[1] = [xx/5+xx/5+xx/5+xx/5+d1, d1, 0.mm]
				pts[2] = [xx/5+xx/5+xx/5+xx/5+d1, d1+yy-d1-d1, 0.mm]
				pts[3] = [xx/5+xx/5+xx/5+xx/5, d1+yy-d1-d1, 0.mm]
			  
				face = entities.add_face pts
				status = face.pushpull -zz, true
				group14.name = pa1
				
				ent = Sketchup.active_model.entities	
				group4 = ent.add_group group4, group14	
				sok.close
			end


			ent = Sketchup.active_model.entities
			group = ent.add_group group1, group2, group3, group4
			sok.close
		}
		
	end

	#-----------------------------------------------------------------------------
	file_loaded("createGframe.rb")

end

