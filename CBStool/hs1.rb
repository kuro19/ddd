module CBS

	def self.hs1
		 
		hs1 = UI::WebDialog.new( 'hs1', true, 'hs1',400, 500, 222, 222, true )
		path = File.join(File.dirname(__FILE__), "webtool", "hs1.html")	
		hs1.set_file path # "hs1"
		 
		hs1.show
		
		hs1.add_action_callback("hs1") { |dialog,arg|
		
			v = arg.to_s.split(",")
			xx = Float(v[0].strip)/ 25.4
			zz = Float(v[1].strip)/ 25.4
			yy = Float(v[2].strip)/ 25.4
			d1 = Float(v[3].strip)/ 25.4
			z1 = Float(v[4].strip)/ 25.4
			r1 = Float(v[5].strip)/ 25.4
			so = Float(v[6].strip)/ 25.4
			
			pa = nav11 # part name
			
			if zz > 2286.mm;	zz = 2286.mm; end
			if zz < 254.mm;	zz = 254.mm; end
			if xx > 1500.mm; xx = 1500.mm; end
			if xx < 275.mm;  xx = 275.mm;  end
			if yy > 1200.mm;  yy = 1200.mm;  end
			if yy < 100.mm;  yy = 100.mm;  end 
		   
			  
			  
			x1 = (xx/600.mm).round
				 
			## sockel

			if so != 0
				
				model = Sketchup.active_model
				  model.start_operation "so"
				  entities = model.active_entities
				  group1s = entities.add_group
				  entities = group1s.entities

					pts = []
				pts[0] = [0, 0 + 40.mm  , 0 ]
				pts[1] = [19.mm,0  + 40.mm , 0 ]
				pts[2] = [19.mm, yy, 0 ]
				pts[3] = [0 , yy, 0 ]


					face = entities.add_face pts
				status = face.pushpull so, true
				group1s.name = pa + pa1	

					
				model = Sketchup.active_model
				  model.start_operation "so"
				  entities = model.active_entities
				  group2s = entities.add_group
				  entities = group2s.entities

					pts = []
				pts[0] = [0 + xx - 19.mm, 0 + 40.mm  , 0 ]
				pts[1] = [19.mm + xx - 19.mm,0  + 40.mm , 0 ]
				pts[2] = [19.mm + xx - 19.mm, yy, 0 ]
				pts[3] = [0 + xx - 19.mm, yy, 0 ]


					face = entities.add_face pts
				status = face.pushpull so, true
				group2s.name = pa + pa1

				model = Sketchup.active_model
				  model.start_operation "so"
				  entities = model.active_entities
				  group3s = entities.add_group
				  entities = group3s.entities

					pts = []
				pts[0] = [0 , 21.mm , 0 ]
				pts[1] = [xx , 21.mm , 0 ]
				pts[2] = [xx , 40.mm, 0 ]
				pts[3] = [0 , 40.mm, 0 ]


					face = entities.add_face pts
				status = face.pushpull so, true
				group3s.name = pa + pa1
			end			 
				 

			##
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
			group3.name = pa  + pa3



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
			group4.name = pa  + pa2



			##
			model = Sketchup.active_model
			  model.start_operation pa4
			  entities = model.active_entities
			  group5 = entities.add_group
			  entities = group5.entities

				pts = []
			pts[0] = [d1, 0.mm+yy-r1-5.mm, 0.mm+z1]
			pts[1] = [d1+xx-d1-d1, 0.mm+yy-r1-5.mm, 0.mm+z1]
			pts[2] = [d1+xx-d1-d1, 0.mm+yy-5.mm, 0.mm+z1]
			pts[3] = [d1, 0.mm+yy-5.mm, 0.mm+z1]

			base = entities.add_face pts
			base.pushpull zz-z1-z1
				model.commit_operation
			group5.name = pa  + pa4
				


			##

			if x1 < 2

				model = Sketchup.active_model
				  model.start_operation pa7
				  entities = model.active_entities
				  group7 = entities.add_group
				  entities = group7.entities

				 pts = []
				pts[0] = [1.mm, -2.mm , 0.mm+zz]
				pts[1] = [xx-1.mm, -2.mm, 0.mm+zz]
				pts[2] = [xx-1.mm, -21.mm, 0.mm+zz]
				pts[3] = [1.mm, -21.mm, 0.mm+zz]


					base = entities.add_face pts
				base.pushpull zz
					model.commit_operation
				group7.name = pa + pa7 
				 
					
				ent = Sketchup.active_model.entities

				 if so != 0
					group = ent.add_group  group1s, group2s, group3s, group1, group2, group3, group4, group5, group7	
				 else
					group = ent.add_group  group1, group2, group3, group4, group5, group7	
				 end

				hs1.close

			end

			##

			if x1 >= 2

				model = Sketchup.active_model
				  model.start_operation pa7
				  entities = model.active_entities
				  group9 = entities.add_group
				  entities = group9.entities

				 pts = []
				pts[0] = [1.mm, -2.mm , 0.mm+zz]
				pts[1] = [xx/2-1.mm, -2.mm, 0.mm+zz]
				pts[2] = [xx/2-1.mm, -21.mm, 0.mm+zz]
				pts[3] = [1.mm, -21.mm, 0.mm+zz]


					base = entities.add_face pts
				base.pushpull zz
					model.commit_operation
				group9.name = pa + pa7


				  model = Sketchup.active_model
				  model.start_operation pa7
				  entities = model.active_entities
				  group10 = entities.add_group
				  entities = group10.entities

					 pts = []
				pts[0] = [xx/2+1.mm, -2.mm , 0.mm+zz]
				pts[1] = [xx/2+xx/2-1.mm, -2.mm, 0.mm+zz]
				pts[2] = [xx/2+xx/2-1.mm, -21.mm, 0.mm+zz]
				pts[3] = [xx/2+1.mm, -21.mm, 0.mm+zz]

				
				base = entities.add_face pts
				base.pushpull zz
					model.commit_operation
				group10.name = pa + pa7

					
					  model = Sketchup.active_model
				  model.start_operation pa22
				  entities = model.active_entities
				  group11 = entities.add_group
				  entities = group11.entities

					pts = []
				pts[0] = [xx/2-(d1/2), 0.mm, 0.mm+z1]
				pts[1] = [xx/2-(d1/2)+d1, 0.mm, 0.mm+z1]
				pts[2] = [xx/2-(d1/2)+d1, yy-5.mm-r1-5.mm, 0.mm+z1]
				pts[3] = [xx/2-(d1/2), yy-5.mm-r1-5.mm, 0.mm+z1]


				base = entities.add_face pts
				base.pushpull zz-z1-z1
					model.commit_operation
				group11.name = pa + pa22	
					
				ent = Sketchup.active_model.entities

				 if so != 0
					group = ent.add_group  group1s, group2s, group3s, group1, group2, group3, group4, group5, group9, group10, group11	
				 else
					group = ent.add_group  group1, group2, group3, group4, group5, group9, group10, group11	
				 end

				hs1.close

			end
			##
		}


	end

	file_loaded("hs1.rb")

end
