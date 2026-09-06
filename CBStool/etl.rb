module CBS

	def self.etl

		etl = UI::WebDialog.new( 'etl', true, 'etl',400, 500, 222, 222, true )
		path = File.join(File.dirname(__FILE__), "webtool", "etl.html")	
		etl.set_file path # "etl"
		 
		etl.show
		etl.add_action_callback("etl") { |dialog,arg|
		
			v = arg.to_s.split(",")
			x1 = Float(v[0].strip)/ 25.4
			hh = Float(v[1].strip)
			yy = Float(v[2].strip)/ 25.4
			d1 = Float(v[3].strip)/ 25.4
			z1 = Float(v[4].strip)/ 25.4
			r1 = Float(v[5].strip)/ 25.4
			so = Float(v[6].strip)/ 25.4

			pa = nav8 # part name
			
			if hh > 9;	hh = 9;	end
			if x1 > 650.mm; x1 = 650.mm; end
			if x1 < 275.mm;  x1 = 275.mm;  end
			if yy > 700.mm;  yy = 700.mm;  end
			if yy < 350.mm;  yy = 350.mm;  end

			 h3 = ( hh *127.mm)-2.mm			   
			 zz = hh*127.mm	
			 xx = x1+550.mm

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
								

				##sei
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


				##bo
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
					
				##tra
				model = Sketchup.active_model
				  model.start_operation pa8
				  entities = model.active_entities
				  group3 = entities.add_group
				  entities = group3.entities

					pts = []
				pts[0] = [0.mm+d1, 0.mm+yy-80.mm, 0.mm+zz]
				pts[1] = [0.mm+xx-d1, 0.mm+yy-80.mm, 0.mm+zz]
				pts[2] = [0.mm+xx-d1, yy, 0.mm+zz]
				pts[3] = [0.mm+d1, yy, 0.mm+zz]

					face = entities.add_face pts
				status = face.pushpull -z1, true
				group3.name = pa + pa8


				##tra
				model = Sketchup.active_model
				  model.start_operation pa8
				  entities = model.active_entities
				  group4 = entities.add_group
				  entities = group4.entities

					pts = []
				pts[0] = [0.mm+d1, 0.mm, 0.mm+zz]
				pts[1] = [0.mm+xx-d1, 0.mm, 0.mm+zz]
				pts[2] = [0.mm+xx-d1, 80.mm, 0.mm+zz]
				pts[3] = [0.mm+d1, 80.mm, 0.mm+zz]

					face = entities.add_face pts
				status = face.pushpull -z1, true
				group4.name = pa + pa8

				##sei
				model = Sketchup.active_model
				  model.start_operation pa2
				  entities = model.active_entities
				  group5 = entities.add_group
				  entities = group5.entities

					pts = []
				pts[0] = [xx-d1, 0.mm , 0.mm]
				pts[1] = [xx, 0.mm, 0.mm]
				pts[2] = [xx, yy, 0.mm]
				pts[3] = [xx-d1, yy, 0.mm]

				face = entities.add_face pts
				status = face.pushpull -zz, true
				group5.name = pa + pa2

				##tra
				model = Sketchup.active_model
				  model.start_operation pa8
				  entities = model.active_entities
				  group6 = entities.add_group
				  entities = group6.entities

					pts = []
				pts[0] = [0.mm, 0.mm+yy, 0.mm+zz]
				pts[1] = [0.mm+xx, 0.mm+yy, 0.mm+zz]
				pts[2] = [0.mm+xx, 0.mm+yy+r1, 0.mm+zz]
				pts[3] = [0.mm, 0.mm+yy+r1, 0.mm+zz]

				face = entities.add_face pts
				status = face.pushpull -zz, true
				group6.name = pa + pa8

				  
				##fro	  
				model = Sketchup.active_model
				  model.start_operation pa7
				  entities = model.active_entities
				  group7 = entities.add_group
				  entities = group7.entities

				 pts = []
				pts[0] = [x1+1.mm, -2.mm , 0.mm+h3]
				pts[1] = [550.mm+x1-1.mm, -2.mm, 0.mm+h3]
				pts[2] = [550.mm+x1-1.mm, -21.mm, 0.mm+h3]
				pts[3] = [x1+1.mm, -21.mm, 0.mm+h3]

					base = entities.add_face pts
				base.pushpull h3
					model.commit_operation
				group7.name = pa + pa7

				##front
				 result = UI.messagebox mat27a, MB_YESNO
				
				 if result == 6 
					
					h1 = ((hh - 1) *127.mm)-2.mm
					h2 = (1*127.mm) -2.mm
					
					 
					if yy >= 350.mm && yy < 400.mm
						ll = 350.mm 
					end	
					if yy >= 400.mm && yy < 450.mm 
						ll = 400.mm 
					end
					if yy >= 450.mm && yy < 500.mm  
						ll = 450.mm 
					end			
					if yy >= 500.mm && yy < 550.mm 
						ll = 500.mm 
					end	
					if yy >= 550.mm && yy < 600.mm 
						ll = 550.mm 
					end
					if yy >= 600.mm && yy < 650.mm
						ll = 600.mm 
					end
					if yy >= 650.mm  
						ll = 650.mm
					end

					#frontu	   
					  model = Sketchup.active_model
					  model.start_operation pa7
					  entities = model.active_entities
					  group8 = entities.add_group
					  entities = group8.entities

					 pts = []
					pts[0] = [1.mm, -2.mm , 0.mm+h1]
					pts[1] = [x1-1.mm, -2.mm, 0.mm+h1]
					pts[2] = [x1-1.mm, -21.mm, 0.mm+h1]
					pts[3] = [1.mm, -21.mm, 0.mm+h1]

					base = entities.add_face pts
					base.pushpull h1
						model.commit_operation
					group8.name = pa + pa7

					#fronto

					model = Sketchup.active_model
					  model.start_operation pa7
					  entities = model.active_entities
					  group9 = entities.add_group
					  entities = group9.entities

						 pts = []
					pts[0] = [1.mm, -2.mm , 0.mm+h1+2.mm+h2]
					pts[1] = [x1-1.mm, -2.mm, 0.mm+h1+2.mm+h2]
					pts[2] = [x1-1.mm, -21.mm, 0.mm+h1+2.mm+h2]
					pts[3] = [1.mm, -21.mm, 0.mm+h1+2.mm+h2]

					base = entities.add_face pts
					base.pushpull h2
						model.commit_operation
					group9.name = pa + pa7
						
					#seio

					model = Sketchup.active_model
					  model.start_operation pa2
					  entities = model.active_entities
					  group2z = entities.add_group
					  entities = group2z.entities

						pts = []
					pts[0] = [x1, 0.mm, zz-z1]
					pts[1] = [x1-d1, 0.mm,  zz-z1]
					pts[2] = [x1-d1, yy,  zz-z1]
					pts[3] = [x1, yy,  zz-z1]

						face = entities.add_face pts
					status = face.pushpull 127.mm-z1, true
					group2z.name = pa + pa2	

					## subo

					model = Sketchup.active_model
					  model.start_operation "su1"
					  entities = model.active_entities
					  group7s = entities.add_group
					  entities = group7s.entities
					  
						pts = []
					pts[0] = [d1+37.5.mm, -2.mm, h1+5.mm ]
					pts[1] = [x1-d1-37.5.mm, -2.mm , h1+5.mm ]
					pts[2] = [x1-d1-37.5.mm, -2.mm + ll-24.mm, h1+5.mm ]
					pts[3] = [d1+37.5.mm, -2.mm + ll-24.mm, h1+5.mm ]
					
					base = entities.add_face pts
					base.pushpull 16.mm
						model.commit_operation			
					group7s.name = pa + "su1"	
						
					## suru
					model = Sketchup.active_model
					  model.start_operation "su1"
					  entities = model.active_entities
					  group7r = entities.add_group
					  entities = group7r.entities
					  
						pts = []
					pts[0] = [d1+43.5.mm, -2.mm+ll-24.mm, h1+5.mm ]
					pts[1] = [x1-d1-43.5.mm, -2.mm+ll-24.mm ,h1+5.mm ]
					pts[2] = [x1-d1-43.5.mm, -2.mm+ll-24.mm+16.mm, h1+5.mm ]
					pts[3] = [d1+43.5.mm, -2.mm+ll-24.mm+16.mm, h1+5.mm ]
				
					base = entities.add_face pts
					base.pushpull 84.mm		
						model.commit_operation			
					group7r.name = pa + "su1"	

					##tab
					if hh>3
						model = Sketchup.active_model
						  model.start_operation pa3
						  entities = model.active_entities
						  group2t = entities.add_group
						  entities = group2t.entities

							pts = []
						pts[0] = [0.mm+d1, 0.mm, h1/2]
						pts[1] = [xx-d1, 0.mm,  h1/2]
						pts[2] = [xx-d1, yy,  h1/2]
						pts[3] = [0.mm+d1, yy,  h1/2]

							face = entities.add_face pts
							status = face.pushpull -z1, true
							group2t.name = pa + pa3	
							
							ent = Sketchup.active_model.entities
							group2 = ent.add_group group2, group2t		
					end	
						
							
					ent = Sketchup.active_model.entities
					
					if so != 0
						group = ent.add_group  group1s, group2s, group3s, group1, group2, group2z,  group3, group4, group5, group6, group7, group7s, group7r, group8, group9	
					else	
						group = ent.add_group  group1, group2, group2z, group3, group4, group5, group6, group7, group7s, group7r, group8, group9		
					end
				
					etl.close
						
				end
				
				if result != 6 
					
					h1 = ((hh) *127.mm)-2.mm
					   
					 model = Sketchup.active_model
					  model.start_operation pa7
					  entities = model.active_entities
					  group10 = entities.add_group
					  entities = group10.entities

					 pts = []
					pts[0] = [1.mm, -2.mm , 0.mm+h1]
					pts[1] = [x1-1.mm, -2.mm, 0.mm+h1]
					pts[2] = [x1-1.mm, -21.mm, 0.mm+h1]
					pts[3] = [1.mm, -21.mm, 0.mm+h1]


						base = entities.add_face pts
					base.pushpull h1
						model.commit_operation
					group10.name = pa + pa7	   
						
				##tab
				if hh>3
				model = Sketchup.active_model
					  model.start_operation pa3
					  entities = model.active_entities
					  group2t = entities.add_group
					  entities = group2t.entities

						pts = []
					pts[0] = [0.mm+d1, 0.mm, zz/2]
					pts[1] = [xx-d1, 0.mm,  zz/2]
					pts[2] = [xx-d1, yy,  zz/2]
					pts[3] = [0.mm+d1, yy,  zz/2]

					   face = entities.add_face pts
					status = face.pushpull -z1, true
					group2t.name = pa + pa3	
					
					ent = Sketchup.active_model.entities
					group2 = ent.add_group group2, group2t		
				end		
						
				ent = Sketchup.active_model.entities
				 
				if so != 0
					group = ent.add_group  group1s, group2s, group3s, group1, group2, group3, group4, group5, group6, group7, group10	
				else	
					group = ent.add_group  group1, group2, group3, group4, group5, group6, group7, group10			
				end
				 
				etl.close  
			
			end 	
				 
			  
		}
	end		
			

	#-----------------------------------------------------------------------------
	file_loaded("etl.rb")

end
