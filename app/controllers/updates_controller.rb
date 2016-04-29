class UpdatesController < ApplicationController
	skip_before_filter :verify_authenticity_token
	respond_to :json

	def update_cities
		san_jose = HTTParty.get("https://en.wikipedia.org/wiki/San_Jose,_California")
		san_jose_page = Nokogiri::HTML(san_jose.body)

		san_jose_name = san_jose_page.css("span.fn.org").text

		san_jose_pop = san_jose_page.css("tr.mergedrow > td")[19].text
		
		san_jose_zip = san_jose_page.css("span.postal-code").text
		p san_jose_zip

		san_jose_top_employer = san_jose_page.css("table.wikitable > tr > td")[128].text
		p san_jose_top_employer

		jobs = HTTParty.get("http://www.indeed.com/jobtrends/percapita")
		jobs_page = Nokogiri::HTML(jobs.body)

		san_jose_jobs_num = jobs_page.css("td.jpc")[0].text
		p san_jose_jobs_num

		san_jose_entry = City.find_by(:city_name => san_jose_name)

		if san_jose_entry
			City.update(san_jose_entry.id, {:city_name => san_jose_name, :zip => san_jose_zip, :jobs => san_jose_jobs_num, :population => san_jose_pop, :top_employer => san_jose_top_employer})
		else
			City.create(:city_name => san_jose_name, :zip => san_jose_zip, :jobs => san_jose_jobs_num, :population => san_jose_pop, :top_employer => san_jose_top_employer)
		end

		slc = HTTParty.get("https://en.wikipedia.org/wiki/Salt_Lake_City")
		slc_page = Nokogiri::HTML(slc.body)

		slc_name = slc_page.css("span.fn.org").text
		# p slc_name
		slc_pop = slc_page.css("tr.mergedrow > td")[8].text
		# p slc_pop
		slc_zip = slc_page.css("span.postal-code").text
		# p slc_zip
		slc_jobs_num = jobs_page.css("td.jpc")[1].text
		# p slc_jobs_num

		slc_entry = City.find_by(:city_name => slc_name)

		if slc_entry
			City.update(slc_entry.id, {:city_name => slc_name, :zip => slc_zip, :jobs => slc_jobs_num, :population => slc_pop, :top_employer => "N/A"})
		else
			City.create(:city_name => slc_name, :zip => slc_zip, :jobs => slc_jobs_num, :population => slc_pop, :top_employer => "N/A")
		end

		ral = HTTParty.get("https://en.wikipedia.org/wiki/Raleigh,_North_Carolina")
		ral_page = Nokogiri::HTML(ral.body)

		ral_name = ral_page.css("span.fn.org").text
		ral_pop = ral_page.css("tr.mergedrow > td")[8].text
		ral_zip = ral_page.css("tr.mergedrow > td > a.mw-redirect")[0].text
		ral_top_employer = ral_page.css("tr > td > a")[20].text
		# p ral_top_employer
		ral_jobs_num = jobs_page.css("td.jpc")[2].text

		ral_entry = City.find_by(:city_name => ral_name)

		if ral_entry
			City.update(ral_entry.id, {:city_name => ral_name, :zip => ral_zip, :jobs => ral_jobs_num, :population => ral_pop, :top_employer => ral_top_employer})
		else
			City.create(:city_name => ral_name, :zip => ral_zip, :jobs => ral_jobs_num, :population => ral_pop, :top_employer => ral_top_employer)
		end

		den = HTTParty.get("https://en.wikipedia.org/wiki/Denver")
		den_page = Nokogiri::HTML(den.body)

		den_name = den_page.css("span.fn.org").text
		# p den_name
		den_pop = den_page.css("tr.mergedrow > td")[15].text
		# p den_pop
		den_zip = den_page.css("span.postal-code").text
		# p den_zip
		den_top_employer = 'N/A'
		
		den_jobs_num = jobs_page.css("td.jpc")[3].text
		# p den_jobs_num

		den_entry = City.find_by(:city_name => den_name)

		if den_entry
			City.update(den_entry.id, {:city_name => den_name, :zip => den_zip, :jobs => den_jobs_num, :population => den_pop, :top_employer => den_top_employer})
		else
			City.create(:city_name => den_name, :zip => den_zip, :jobs => den_jobs_num, :population => den_pop, :top_employer => den_top_employer)
		end

		seattle = HTTParty.get("https://en.wikipedia.org/wiki/Seattle")
		seattle_page = Nokogiri::HTML(seattle.body)

		seattle_name = seattle_page.css("span.fn.org").text
		# p seattle_name
		seattle_pop = seattle_page.css("tr.mergedrow > td")[15].text
		# p seattle_pop
		seattle_zip = seattle_page.css("span.postal-code").text
		# p seattle_zip
		seattle_top_employer = 'N/A'
		
		seattle_jobs_num = jobs_page.css("td.jpc")[4].text
		# p seattle_jobs_num		

		seattle_entry = City.find_by(:city_name => seattle_name)

		if seattle_entry
			City.update(seattle_entry.id, {:city_name => seattle_name, :zip => seattle_zip, :jobs => seattle_jobs_num, :population => seattle_pop, :top_employer => seattle_top_employer})
		else
			City.create(:city_name => seattle_name, :zip => seattle_zip, :jobs => seattle_jobs_num, :population => seattle_pop, :top_employer => seattle_top_employer)
		end

		austin = HTTParty.get("https://en.wikipedia.org/wiki/Austin,_Texas")
		austin_page = Nokogiri::HTML(austin.body)

		austin_name = austin_page.css("span.fn.org").text
		# p austin_name
		austin_pop = austin_page.css("tr.mergedrow > td")[11].text
		# p austin_pop
		austin_zip = seattle_page.css("span.postal-code").text
		# p austin_zip
		austin_top_employer = 'N/A'
		
		austin_jobs_num = jobs_page.css("td.jpc")[5].text
		# p austin_jobs_num		

		austin_entry = City.find_by(:city_name => austin_name)

		if austin_entry
			City.update(austin_entry.id, {:city_name => austin_name, :zip => austin_zip, :jobs => austin_jobs_num, :population => austin_pop, :top_employer => austin_top_employer})
		else
			City.create(:city_name => austin_name, :zip => austin_zip, :jobs => austin_jobs_num, :population => austin_pop, :top_employer => austin_top_employer)
		end		

		nashville = HTTParty.get("https://en.wikipedia.org/wiki/Nashville,_Tennessee")
		nashville_page = Nokogiri::HTML(nashville.body)

		nashville_name = nashville_page.css("span.fn.org").text
		# p nashville_name
		nashville_pop = nashville_page.css("tr.mergedrow > td")[10].text
		# p nashville_pop
		nashville_zip = nashville_page.css("span.postal-code").text
		# p nashville_zip
		nashville_top_employer = nashville_page.css("tr > td")[290].text
		# p nashville_top_employer 
		nashville_jobs_num = jobs_page.css("td.jpc")[6].text
		# p nashville_jobs_num		

		nashville_entry = City.find_by(:city_name => nashville_name)

		if nashville_entry
			City.update(nashville_entry.id, {:city_name => nashville_name, :zip => nashville_zip, :jobs => nashville_jobs_num, :population => nashville_pop, :top_employer => nashville_top_employer})
		else
			City.create(:city_name => nashville_name, :zip => nashville_zip, :jobs => nashville_jobs_num, :population => nashville_pop, :top_employer => nashville_top_employer)
		end		

		richmond = HTTParty.get("https://en.wikipedia.org/wiki/Richmond,_Virginia")
		richmond_page = Nokogiri::HTML(richmond.body)

		richmond_name = richmond_page.css("span.fn.org").text
		# p richmond_name
		richmond_pop = richmond_page.css("tr.mergedrow > td")[9].text
		p richmond_pop
		richmond_zip = richmond_page.css("span.postal-code").text
		p richmond_zip
		richmond_top_employer = "N/A"
		# p richmond_top_employer 
		richmond_jobs_num = jobs_page.css("td.jpc")[7].text
		p richmond_jobs_num		

		richmond_entry = City.find_by(:city_name => richmond_name)

		if richmond_entry
			City.update(richmond_entry.id, {:city_name => richmond_name, :zip => richmond_zip, :jobs => richmond_jobs_num, :population => richmond_pop, :top_employer => richmond_top_employer})
		else
			City.create(:city_name => richmond_name, :zip => richmond_zip, :jobs => richmond_jobs_num, :population => richmond_pop, :top_employer => richmond_top_employer)
		end		

		indy = HTTParty.get("https://en.wikipedia.org/wiki/Indianapolis")
		indy_page = Nokogiri::HTML(indy.body)

		indy_name = indy_page.css("span.fn.org").text
		p indy_name
		indy_pop = indy_page.css("tr.mergedrow > td")[12].text
		p indy_pop
		indy_zip = indy_page.css("span.postal-code").text
		p indy_zip
		indy_top_employer = "N/A"
		# p indy_top_employer 
		indy_jobs_num = jobs_page.css("td.jpc")[8].text
		p indy_jobs_num		

		indy_entry = City.find_by(:city_name => indy_name)

		if indy_entry
			City.update(indy_entry.id, {:city_name => indy_name, :zip => indy_zip, :jobs => indy_jobs_num, :population => indy_pop, :top_employer => indy_top_employer})
		else
			City.create(:city_name => indy_name, :zip => indy_zip, :jobs => indy_jobs_num, :population => indy_pop, :top_employer => indy_top_employer)
		end		

		minn = HTTParty.get("https://en.wikipedia.org/wiki/Minneapolis")
		minn_page = Nokogiri::HTML(minn.body)

		minn_name = minn_page.css("span.fn.org").text
		p minn_name
		minn_pop = minn_page.css("tr.mergedrow > td")[14].text
		p minn_pop
		minn_zip = minn_page.css("span.postal-code").text
		p minn_zip
		minn_top_employer = "N/A"
		# p indy_top_employer 
		minn_jobs_num = jobs_page.css("td.jpc")[9].text
		p minn_jobs_num		

		minn_entry = City.find_by(:city_name => minn_name)

		if minn_entry
			City.update(minn_entry.id, {:city_name => minn_name, :zip => minn_zip, :jobs => minn_jobs_num, :population => minn_pop, :top_employer => minn_top_employer})
		else
			City.create(:city_name => minn_name, :zip => minn_zip, :jobs => minn_jobs_num, :population => minn_pop, :top_employer => minn_top_employer)
		end		

		kc = HTTParty.get("https://en.wikipedia.org/wiki/Kansas_City,_Missouri")
		kc_page = Nokogiri::HTML(kc.body)

		kc_name = kc_page.css("span.fn.org").text
		p kc_name
		kc_pop = kc_page.css("tr.mergedrow > td")[10].text
		p kc_pop
		kc_zip = kc_page.css("span.postal-code").text
		p kc_zip
		kc_top_employer = kc_page.css("table.wikitable > tr > td")[360].text
		p kc_top_employer 
		kc_jobs_num = jobs_page.css("td.jpc")[10].text
		# p kc_jobs_num		

		kc_entry = City.find_by(:city_name => kc_name)

		if kc_entry
			City.update(kc_entry.id, {:city_name => kc_name, :zip => kc_zip, :jobs => kc_jobs_num, :population => kc_pop, :top_employer => kc_top_employer})
		else
			City.create(:city_name => kc_name, :zip => kc_zip, :jobs => kc_jobs_num, :population => kc_pop, :top_employer => kc_top_employer)
		end		

		lou = HTTParty.get("https://en.wikipedia.org/wiki/Louisville,_Kentucky")
		lou_page = Nokogiri::HTML(lou.body)

		lou_name = lou_page.css("span.fn.org").text
		p lou_name
		lou_pop = lou_page.css("tr.mergedrow > td")[13].text
		p lou_pop
		lou_zip = lou_page.css("span.postal-code").text
		p lou_zip
		lou_top_employer = "N/A"
		p lou_top_employer 
		lou_jobs_num = jobs_page.css("td.jpc")[11].text
		# p kc_jobs_num		

		lou_entry = City.find_by(:city_name => lou_name)

		if lou_entry
			City.update(lou_entry.id,{:city_name => lou_name, :zip => lou_zip, :jobs => lou_jobs_num, :population => lou_pop, :top_employer => lou_top_employer})
		else
			City.create(:city_name => lou_name, :zip => lou_zip, :jobs => lou_jobs_num, :population => lou_pop, :top_employer => lou_top_employer)
		end		

		boston = HTTParty.get("https://en.wikipedia.org/wiki/Boston")
		boston_page = Nokogiri::HTML(boston.body)

		boston_name = boston_page.css("span.fn.org").text
		# p boston_name
		boston_pop = boston_page.css("tr.mergedrow > td")[17].text
		# p boston_pop
		boston_zip = boston_page.css("span.postal-code").text
		# p boston_zip
		boston_top_employer = "N/A"
		# p boston_top_employer 
		boston_jobs_num = jobs_page.css("td.jpc")[12].text
		

		boston_entry = City.find_by(:city_name => boston_name)

		if boston_entry
			City.update(boston_entry.id, {:city_name => boston_name, :zip => boston_zip, :jobs => boston_jobs_num, :population => boston_pop, :top_employer => boston_top_employer})
		else
			City.create(:city_name => boston_name, :zip => boston_zip, :jobs => boston_jobs_num, :population => boston_pop, :top_employer => boston_top_employer)
		end		

		hart = HTTParty.get("https://en.wikipedia.org/wiki/Hartford,_Connecticut")
		hart_page = Nokogiri::HTML(hart.body)

		hart_name = hart_page.css("span.fn.org").text
		p hart_name
		hart_pop = hart_page.css("tr.mergedrow > td")[17].text
		p hart_pop
		hart_zip = hart_page.css("span.postal-code").text
		p hart_zip
		hart_top_employer = "N/A"
		# p hart_top_employer 
		hart_jobs_num = jobs_page.css("td.jpc")[13].text
		
		hart_entry = City.find_by(:city_name => hart_name)

		if hart_entry
			City.update(hart_entry.id, {:city_name => hart_name, :zip => hart_zip, :jobs => hart_jobs_num, :population => hart_pop, :top_employer => hart_top_employer})
		else
			City.create(:city_name => hart_name, :zip => hart_zip, :jobs => hart_jobs_num, :population => hart_pop, :top_employer => hart_top_employer)
		end		

		col = HTTParty.get("https://en.wikipedia.org/wiki/Columbus,_Ohio")
		col_page = Nokogiri::HTML(col.body)

		col_name = col_page.css("span.fn.org").text
		p col_name
		col_pop = col_page.css("tr.mergedrow > td")[11].text
		p col_pop
		col_zip = col_page.css("span.postal-code").text
		p col_zip
		col_top_employer = "N/A"
		# p hart_top_employer 
		col_jobs_num = jobs_page.css("td.jpc")[14].text
		
		col_entry = City.find_by(:city_name => col_name)

		if col_entry
			City.update(col_entry.id, {:city_name => col_name, :zip => col_zip, :jobs => col_jobs_num, :population => col_pop, :top_employer => col_top_employer})
		else
			City.create(:city_name => col_name, :zip => col_zip, :jobs => col_jobs_num, :population => col_pop, :top_employer => col_top_employer)
		end	

		dc = HTTParty.get("https://en.wikipedia.org/wiki/Washington,_D.C.")
		dc_page = Nokogiri::HTML(dc.body)

		dc_name = dc_page.css("span.fn.org").text
		p dc_name
		dc_pop = dc_page.css("tr.mergedrow > td")[13].text
		p dc_pop
		dc_zip = dc_page.css("span.postal-code").text
		p dc_zip
		dc_top_employer = "N/A"
		# p dc_top_employer 
		dc_jobs_num = jobs_page.css("td.jpc")[15].text
		
		dc_entry = City.find_by(:city_name => dc_name)

		if dc_entry
			City.update(dc_entry.id, {:city_name => dc_name, :zip => dc_zip, :jobs => dc_jobs_num, :population => dc_pop, :top_employer => dc_top_employer})
		else
			City.create(:city_name => dc_name, :zip => dc_zip, :jobs => dc_jobs_num, :population => dc_pop, :top_employer => dc_top_employer)
		end	

		pitt = HTTParty.get("https://en.wikipedia.org/wiki/Pittsburgh")
		pitt_page = Nokogiri::HTML(pitt.body)

		pitt_name = pitt_page.css("span.fn.org").text
		p pitt_name
		pitt_pop = pitt_page.css("tr.mergedrow > td")[21].text
		p pitt_pop
		pitt_zip = pitt_page.css("span.postal-code").text
		p pitt_zip
		pitt_top_employer = "N/A"
		# p pitt_top_employer 
		pitt_jobs_num = jobs_page.css("td.jpc")[16].text
		
		pitt_entry = City.find_by(:city_name => pitt_name)

		if pitt_entry
			City.update(pitt_entry.id, {:city_name => pitt_name, :zip => pitt_zip, :jobs => pitt_jobs_num, :population => pitt_pop, :top_employer => pitt_top_employer})
		else
			City.create(:city_name => pitt_name, :zip => pitt_zip, :jobs => pitt_jobs_num, :population => pitt_pop, :top_employer => pitt_top_employer)
		end	

		sf = HTTParty.get("https://en.wikipedia.org/wiki/San_Francisco")
		sf_page = Nokogiri::HTML(sf.body)

		sf_name = sf_page.css("span.fn.org").text
		p sf_name
		sf_pop = sf_page.css("tr.mergedrow > td")[20].text
		p sf_pop
		sf_zip = sf_page.css("span.postal-code").text
		p sf_zip
		sf_top_employer = "N/A"
		# p sf_top_employer 
		sf_jobs_num = jobs_page.css("td.jpc")[17].text
		
		sf_entry = City.find_by(:city_name => sf_name)

		if sf_entry
			City.update(sf_entry.id, {:city_name => sf_name, :zip => sf_zip, :jobs => sf_jobs_num, :population => sf_pop, :top_employer => sf_top_employer})
		else
			City.create(:city_name => sf_name, :zip => sf_zip, :jobs => sf_jobs_num, :population => sf_pop, :top_employer => sf_top_employer)
		end	

		cin = HTTParty.get("https://en.wikipedia.org/wiki/Cincinnati")
		cin_page = Nokogiri::HTML(cin.body)

		cin_name = cin_page.css("span.fn.org").text
		p cin_name
		cin_pop = cin_page.css("tr.mergedrow > td")[12].text
		p cin_pop
		cin_zip = cin_page.css("span.postal-code").text
		p cin_zip
		cin_top_employer = "N/A"
		# p cin_top_employer 
		cin_jobs_num = jobs_page.css("td.jpc")[18].text
		
		cin_entry = City.find_by(:city_name => cin_name)

		if cin_entry
			City.update(cin_entry.id, {:city_name => cin_name, :zip => cin_zip, :jobs => cin_jobs_num, :population => cin_pop, :top_employer => cin_top_employer})
		else
			City.create(:city_name => cin_name, :zip => cin_zip, :jobs => cin_jobs_num, :population => cin_pop, :top_employer => cin_top_employer)
		end	

		cle = HTTParty.get("https://en.wikipedia.org/wiki/Cleveland")
		cle_page = Nokogiri::HTML(cle.body)

		cle_name = cle_page.css("span.fn.org").text
		p cle_name
		cle_pop = cle_page.css("tr.mergedrow > td")[14].text
		p cle_pop
		cle_zip = cle_page.css("span.postal-code").text
		p cle_zip
		cle_top_employer = "N/A"
		# p cle_top_employer 
		cle_jobs_num = jobs_page.css("td.jpc")[19].text
		
		cle_entry = City.find_by(:city_name => cle_name)

		if cle_entry
			City.update(cle_entry.id, {:city_name => cle_name, :zip => cle_zip, :jobs => cle_jobs_num, :population => cle_pop, :top_employer => cle_top_employer})
		else
			City.create(:city_name => cle_name, :zip => cle_zip, :jobs => cle_jobs_num, :population => cle_pop, :top_employer => cle_top_employer)
		end	

		atl = HTTParty.get("https://en.wikipedia.org/wiki/Atlanta")
		atl_page = Nokogiri::HTML(atl.body)

		atl_name = atl_page.css("span.fn.org").text
		p atl_name
		atl_pop = atl_page.css("tr.mergedrow > td")[14].text
		p atl_pop
		atl_zip = atl_page.css("span.postal-code").text
		p atl_zip
		atl_top_employer = "N/A"
		# p cle_top_employer 
		atl_jobs_num = jobs_page.css("td.jpc")[20].text
		
		atl_entry = City.find_by(:city_name => atl_name)

		if atl_entry
			City.update(atl_entry.id, {:city_name => atl_name, :zip => atl_zip, :jobs => atl_jobs_num, :population => atl_pop, :top_employer => atl_top_employer})
		else
			City.create(:city_name => atl_name, :zip => atl_zip, :jobs => atl_jobs_num, :population => atl_pop, :top_employer => atl_top_employer)
		end	

		dal = HTTParty.get("https://en.wikipedia.org/wiki/Dallas")
		dal_page = Nokogiri::HTML(dal.body)

		dal_name = dal_page.css("span.fn.org").text
		p dal_name
		dal_pop = dal_page.css("tr.mergedrow > td")[12].text
		p dal_pop
		dal_zip = dal_page.css("tr.mergedrow > td")[22].text
		p dal_zip
		dal_top_employer = "N/A"
		# p dal_top_employer 
		dal_jobs_num = jobs_page.css("td.jpc")[21].text
		
		dal_entry = City.find_by(:city_name => dal_name)

		if dal_entry
			City.update(dal_entry.id, {:city_name => dal_name, :zip => dal_zip, :jobs => dal_jobs_num, :population => dal_pop, :top_employer => dal_top_employer})
		else
			City.create(:city_name => dal_name, :zip => dal_zip, :jobs => dal_jobs_num, :population => dal_pop, :top_employer => dal_top_employer)
		end	


		port = HTTParty.get("https://en.wikipedia.org/wiki/Portland,_Oregon")
		port_page = Nokogiri::HTML(port.body)

		port_name = port_page.css("span.fn.org")[0].text
		p port_name
		port_pop = port_page.css("tr.mergedrow > td")[14].text
		p port_pop
		port_zip = port_page.css("span.postal-code").text
		p port_zip
		port_top_employer = "N/A"
		# p port top_employer 
		port_jobs_num = jobs_page.css("td.jpc")[22].text
		
		port_entry = City.find_by(:city_name => port_name)

		if port_entry
			City.update(port_entry.id, {:city_name => port_name, :zip => port_zip, :jobs => port_jobs_num, :population => port_pop, :top_employer => port_top_employer})
		else
			City.create(:city_name => port_name, :zip => port_zip, :jobs => port_jobs_num, :population => port_pop, :top_employer => port_top_employer)
		end	

		orl = HTTParty.get("https://en.wikipedia.org/wiki/Orlando,_Florida")
		orl_page = Nokogiri::HTML(orl.body)

		orl_name = orl_page.css("span.fn.org")[0].text
		p orl_name
		orl_pop = orl_page.css("tr.mergedrow > td")[12].text
		p orl_pop
		orl_zip = orl_page.css("span.postal-code").text
		p orl_zip
		orl_top_employer = "N/A"
		# p port top_employer 
		orl_jobs_num = jobs_page.css("td.jpc")[23].text
		
		orl_entry = City.find_by(:city_name => orl_name)

		if orl_entry
			City.update(orl_entry.id, {:city_name => orl_name, :zip => orl_zip, :jobs => orl_jobs_num, :population => orl_pop, :top_employer => orl_top_employer})
		else
			City.create(:city_name => orl_name, :zip => orl_zip, :jobs => orl_jobs_num, :population => orl_pop, :top_employer => orl_top_employer)
		end	

		stl = HTTParty.get("https://en.wikipedia.org/wiki/St._Louis")
		stl_page = Nokogiri::HTML(stl.body)

		stl_name = stl_page.css("span.fn.org").text
		p stl_name
		stl_pop = stl_page.css("tr.mergedrow > td")[15].text
		p stl_pop
		stl_zip = stl_page.css("span.postal-code").text
		p stl_zip
		stl_top_employer = stl_page.css("tr > td")[328].text
		p stl_top_employer 
		stl_jobs_num = jobs_page.css("td.jpc")[24].text
		
		stl_entry = City.find_by(:city_name => stl_name)

		if stl_entry
			City.update(stl_entry.id, {:city_name => stl_name, :zip => stl_zip, :jobs => stl_jobs_num, :population => stl_pop, :top_employer => stl_top_employer})
		else
			City.create(:city_name => stl_name, :zip => stl_zip, :jobs => stl_jobs_num, :population => stl_pop, :top_employer => stl_top_employer)
		end	

		phi = HTTParty.get("https://en.wikipedia.org/wiki/Philadelphia")
		phi_page = Nokogiri::HTML(phi.body)

		phi_name = phi_page.css("span.fn.org").text
		p phi_name
		phi_pop = phi_page.css("tr.mergedrow > td")[16].text
		p phi_pop
		phi_zip = phi_page.css("span.postal-code").text
		p phi_zip
		phi_top_employer = "N/A"
		# p phi_top_employer 
		phi_jobs_num = jobs_page.css("td.jpc")[25].text
		
		phi_entry = City.find_by(:city_name => phi_name)

		if phi_entry
			City.update(phi_entry.id, {:city_name => phi_name, :zip => phi_zip, :jobs => phi_jobs_num, :population => phi_pop, :top_employer => phi_top_employer})
		else
			City.create(:city_name => phi_name, :zip => phi_zip, :jobs => phi_jobs_num, :population => phi_pop, :top_employer => phi_top_employer)
		end	

		cha = HTTParty.get("https://en.wikipedia.org/wiki/Charlotte,_North_Carolina")
		cha_page = Nokogiri::HTML(cha.body)

		cha_name = cha_page.css("span.fn.org").text
		p cha_name
		cha_pop = cha_page.css("tr.mergedrow > td")[9].text
		p cha_pop
		cha_zip = cha_page.css("span.postal-code").text
		p cha_zip
		cha_top_employer = cha_page.css("tr > td > a")[19].text
		p cha_top_employer 
		cha_jobs_num = jobs_page.css("td.jpc")[26].text
		
		cha_entry = City.find_by(:city_name => cha_name)

		if cha_entry
			City.update(cha_entry.id, {:city_name => cha_name, :zip => cha_zip, :jobs => cha_jobs_num, :population => cha_pop, :top_employer => cha_top_employer})
		else
			City.create(:city_name => cha_name, :zip => cha_zip, :jobs => cha_jobs_num, :population => cha_pop, :top_employer => cha_top_employer)
		end	

		chi = HTTParty.get("https://en.wikipedia.org/wiki/Chicago")
		chi_page = Nokogiri::HTML(chi.body)

		chi_name = chi_page.css("span.fn.org").text
		p chi_name
		chi_pop = chi_page.css("tr.mergedrow > td")[20].text
		p chi_pop
		chi_zip = chi_page.css("span.postal-code").text
		p chi_zip
		chi_top_employer = chi_page.css("tr > td")[448].text
		p chi_top_employer 
		chi_jobs_num = jobs_page.css("td.jpc")[27].text
		
		chi_entry = City.find_by(:city_name => chi_name)

		if chi_entry
			City.update(chi_entry.id, {:city_name => chi_name, :zip => chi_zip, :jobs => chi_jobs_num, :population => chi_pop, :top_employer => chi_top_employer})
		else
			City.create(:city_name => chi_name, :zip => chi_zip, :jobs => chi_jobs_num, :population => chi_pop, :top_employer => chi_top_employer)
		end	

		bal = HTTParty.get("https://en.wikipedia.org/wiki/Baltimore")
		bal_page = Nokogiri::HTML(bal.body)

		bal_name = bal_page.css("span.fn.org").text
		p bal_name
		bal_pop = bal_page.css("tr.mergedrow > td")[21].text
		p bal_pop
		bal_zip = bal_page.css("span.postal-code").text
		p bal_zip
		bal_top_employer = "N/A"
		# p bal_top_employer 
		bal_jobs_num = jobs_page.css("td.jpc")[28].text
		
		bal_entry = City.find_by(:city_name => bal_name)

		if bal_entry
			City.update(bal_entry.id, {:city_name => bal_name, :zip => bal_zip, :jobs => bal_jobs_num, :population => bal_pop, :top_employer => bal_top_employer})
		else
			City.create(:city_name => bal_name, :zip => bal_zip, :jobs => bal_jobs_num, :population => bal_pop, :top_employer => bal_top_employer)
		end	

		mil = HTTParty.get("https://en.wikipedia.org/wiki/Milwaukee")
		mil_page = Nokogiri::HTML(mil.body)

		mil_name = mil_page.css("span.fn.org").text
		p mil_name
		mil_pop = mil_page.css("tr.mergedrow > td")[10].text
		p mil_pop
		mil_zip = mil_page.css("span.postal-code").text
		p mil_zip
		mil_top_employer = "N/A"
		# p mil_top_employer 
		mil_jobs_num = jobs_page.css("td.jpc")[29].text
		
		mil_entry = City.find_by(:city_name => mil_name)

		if mil_entry
			City.update(mil_entry.id, {:city_name => mil_name, :zip => mil_zip, :jobs => mil_jobs_num, :population => mil_pop, :top_employer => mil_top_employer})
		else
			City.create(:city_name => mil_name, :zip => mil_zip, :jobs => mil_jobs_num, :population => mil_pop, :top_employer => mil_top_employer)
		end	

		pho = HTTParty.get("https://en.wikipedia.org/wiki/Phoenix,_Arizona")
		pho_page = Nokogiri::HTML(pho.body)

		pho_name = pho_page.css("span.fn.org").text
		p pho_name
		pho_pop = pho_page.css("tr.mergedrow > td")[13].text
		p pho_pop
		pho_zip = pho_page.css("span.postal-code").text
		p pho_zip
		pho_top_employer = "N/A"
		# p pho_top_employer 
		pho_jobs_num = jobs_page.css("td.jpc")[30].text
		
		pho_entry = City.find_by(:city_name => pho_name)

		if pho_entry
			City.update(pho_entry.id, {:city_name => pho_name, :zip => pho_zip, :jobs => pho_jobs_num, :population => pho_pop, :top_employer => pho_top_employer})
		else
			City.create(:city_name => pho_name, :zip => pho_zip, :jobs => pho_jobs_num, :population => pho_pop, :top_employer => pho_top_employer)
		end	

		okc = HTTParty.get("https://en.wikipedia.org/wiki/Oklahoma_City")
		okc_page = Nokogiri::HTML(okc.body)

		okc_name = okc_page.css("span.fn.org").text
		p okc_name
		okc_pop = okc_page.css("tr.mergedrow > td")[13].text
		p okc_pop
		okc_zip = okc_page.css("span.postal-code").text
		p okc_zip
		okc_top_employer = okc_page.css('ol > li > a')[0].text
		p okc_top_employer 
		okc_jobs_num = jobs_page.css("td.jpc")[31].text
		
		okc_entry = City.find_by(:city_name => okc_name)

		if okc_entry
			City.update(okc_entry.id, {:city_name => okc_name, :zip => okc_zip, :jobs => okc_jobs_num, :population => okc_pop, :top_employer => okc_top_employer})
		else
			City.create(:city_name => okc_name, :zip => okc_zip, :jobs => okc_jobs_num, :population => okc_pop, :top_employer => okc_top_employer)
		end	

		det = HTTParty.get("https://en.wikipedia.org/wiki/Detroit")
		det_page = Nokogiri::HTML(det.body)

		det_name = det_page.css("span.fn.org").text
		p det_name
		det_pop = det_page.css("tr.mergedrow > td")[16].text
		p det_pop
		det_zip = det_page.css("span.postal-code").text
		p det_zip
		det_top_employer = det_page.css('tr > td > a')[26].text
		p det_top_employer 
		det_jobs_num = jobs_page.css("td.jpc")[32].text
		
		det_entry = City.find_by(:city_name => det_name)

		if det_entry
			City.update(det_entry.id, {:city_name => det_name, :zip => det_zip, :jobs => det_jobs_num, :population => det_pop, :top_employer => det_top_employer})
		else
			City.create(:city_name => det_name, :zip => det_zip, :jobs => det_jobs_num, :population => det_pop, :top_employer => det_top_employer)
		end	

		san = HTTParty.get("https://en.wikipedia.org/wiki/San_Antonio")
		san_page = Nokogiri::HTML(san.body)

		san_name = san_page.css("span.fn.org").text
		p san_name
		san_pop = san_page.css("tr.mergedrow > td")[14].text
		p san_pop
		san_zip = san_page.css("span.postal-code").text
		p san_zip
		san_top_employer = "N/A"
		# p san_top_employer 
		san_jobs_num = jobs_page.css("td.jpc")[33].text
		
		san_entry = City.find_by(:city_name => san_name)

		if san_entry
			City.update(san_entry.id, {:city_name => san_name, :zip => san_zip, :jobs => san_jobs_num, :population => san_pop, :top_employer => san_top_employer})
		else
			City.create(:city_name => san_name, :zip => san_zip, :jobs => san_jobs_num, :population => san_pop, :top_employer => san_top_employer)
		end	

		sac = HTTParty.get("https://en.wikipedia.org/wiki/Sacramento,_California")
		sac_page = Nokogiri::HTML(sac.body)

		sac_name = sac_page.css("span.fn.org").text
		p sac_name
		sac_pop = sac_page.css("tr.mergedrow > td")[17].text
		p sac_pop
		sac_zip = sac_page.css("span.postal-code").text
		p sac_zip
		sac_top_employer = sac_page.css('tr > td > a')[28].text
		p sac_top_employer 
		sac_jobs_num = jobs_page.css("td.jpc")[34].text
		
		sac_entry = City.find_by(:city_name => sac_name)

		if sac_entry
			City.update(sac_entry.id, {:city_name => sac_name, :zip => sac_zip, :jobs => sac_jobs_num, :population => sac_pop, :top_employer => sac_top_employer})
		else
			City.create(:city_name => sac_name, :zip => sac_zip, :jobs => sac_jobs_num, :population => sac_pop, :top_employer => sac_top_employer)
		end	

		jax = HTTParty.get("https://en.wikipedia.org/wiki/Jacksonville,_Florida")
		jax_page = Nokogiri::HTML(jax.body)

		jax_name = jax_page.css("span.fn.org").text
		p jax_name
		jax_pop = jax_page.css("tr.mergedrow > td")[14].text
		p jax_pop
		jax_zip = jax_page.css("span.postal-code").text
		p jax_zip
		jax_top_employer = "N/A"
		# p jax_top_employer 
		jax_jobs_num = jobs_page.css("td.jpc")[35].text
		
		jax_entry = City.find_by(:city_name => jax_name)

		if jax_entry
			City.update(jax_entry.id, {:city_name => jax_name, :zip => jax_zip, :jobs => jax_jobs_num, :population => jax_pop, :top_employer => jax_top_employer})
		else
			City.create(:city_name => jax_name, :zip => jax_zip, :jobs => jax_jobs_num, :population => jax_pop, :top_employer => jax_top_employer)
		end	

		bir = HTTParty.get("https://en.wikipedia.org/wiki/Birmingham,_Alabama")
		bir_page = Nokogiri::HTML(bir.body)

		bir_name = bir_page.css("span.fn.org").text
		p bir_name
		bir_pop = bir_page.css("tr.mergedrow > td")[11].text
		p bir_pop
		bir_zip = bir_page.css("span.postal-code").text
		p bir_zip
		bir_top_employer = "N/A"
		# p bir_top_employer 
		bir_jobs_num = jobs_page.css("td.jpc")[36].text
		
		bir_entry = City.find_by(:city_name => bir_name)

		if bir_entry
			City.update(bir_entry.id, {:city_name => bir_name, :zip => bir_zip, :jobs => bir_jobs_num, :population => bir_pop, :top_employer => bir_top_employer})
		else
			City.create(:city_name => bir_name, :zip => bir_zip, :jobs => bir_jobs_num, :population => bir_pop, :top_employer => bir_top_employer)
		end	

		sd = HTTParty.get("https://en.wikipedia.org/wiki/San_Diego")
		sd_page = Nokogiri::HTML(sd.body)

		sd_name = sd_page.css("span.fn.org").text
		p sd_name
		sd_pop = sd_page.css("tr.mergedrow > td")[14].text
		p sd_pop
		sd_zip = sd_page.css("span.postal-code").text
		p sd_zip
		sd_top_employer = sd_page.css('tr > td > a')[27].text
		p sd_top_employer 
		sd_jobs_num = jobs_page.css("td.jpc")[37].text
		
		sd_entry = City.find_by(:city_name => sd_name)

		if sd_entry
			City.update(sd_entry.id, {:city_name => sd_name, :zip => sd_zip, :jobs => sd_jobs_num, :population => sd_pop, :top_employer => sd_top_employer})
		else
			City.create(:city_name => sd_name, :zip => sd_zip, :jobs => sd_jobs_num, :population => sd_pop, :top_employer => sd_top_employer)
		end	

		tpa = HTTParty.get("https://en.wikipedia.org/wiki/Tampa,_Florida")
		tpa_page = Nokogiri::HTML(tpa.body)

		tpa_name = tpa_page.css("span.fn.org").text
		p tpa_name
		tpa_pop = tpa_page.css("tr.mergedrow > td")[15].text
		p tpa_pop
		tpa_zip = tpa_page.css("span.postal-code").text
		p tpa_zip
		tpa_top_employer = tpa_page.css('tr > td')[304].text
		p tpa_top_employer 
		tpa_jobs_num = jobs_page.css("td.jpc")[38].text
		
		tpa_entry = City.find_by(:city_name => tpa_name)

		if tpa_entry
			City.update(tpa_entry.id, {:city_name => tpa_name, :zip => tpa_zip, :jobs => tpa_jobs_num, :population => tpa_pop, :top_employer => tpa_top_employer})
		else
			City.create(:city_name => tpa_name, :zip => tpa_zip, :jobs => tpa_jobs_num, :population => tpa_pop, :top_employer => tpa_top_employer)
		end	

		hou = HTTParty.get("https://en.wikipedia.org/wiki/Houston")
		hou_page = Nokogiri::HTML(hou.body)

		hou_name = hou_page.css("span.fn.org").text
		p hou_name
		hou_pop = hou_page.css("tr.mergedrow > td")[12].text
		p hou_pop
		hou_zip = hou_page.css("span.postal-code").text
		p hou_zip
		hou_top_employer = "N/A"
		# p hou_top_employer 
		hou_jobs_num = jobs_page.css("td.jpc")[39].text
		
		hou_entry = City.find_by(:city_name => hou_name)

		if hou_entry
			City.update(hou_entry.id, {:city_name => hou_name, :zip => hou_zip, :jobs => hou_jobs_num, :population => hou_pop, :top_employer => hou_top_employer})
		else
			City.create(:city_name => hou_name, :zip => hou_zip, :jobs => hou_jobs_num, :population => hou_pop, :top_employer => hou_top_employer)
		end	

		nyc = HTTParty.get("https://en.wikipedia.org/wiki/New_York_City")
		nyc_page = Nokogiri::HTML(nyc.body)

		nyc_name = nyc_page.css("span.fn.org").text
		p nyc_name
		nyc_pop = nyc_page.css("tr.mergedrow > td")[13].text
		p nyc_pop
		nyc_zip = nyc_page.css("span.postal-code").text
		p nyc_zip
		nyc_top_employer = "N/A"
		# p nyc_top_employer 
		nyc_jobs_num = jobs_page.css("td.jpc")[40].text
		
		nyc_entry = City.find_by(:city_name => nyc_name)

		if nyc_entry
			City.update(nyc_entry.id, {:city_name => nyc_name, :zip => nyc_zip, :jobs => nyc_jobs_num, :population => nyc_pop, :top_employer => nyc_top_employer})
		else
			City.create(:city_name => nyc_name, :zip => nyc_zip, :jobs => nyc_jobs_num, :population => nyc_pop, :top_employer => nyc_top_employer)
		end	

		mem = HTTParty.get("https://en.wikipedia.org/wiki/Memphis,_Tennessee")
		mem_page = Nokogiri::HTML(mem.body)

		mem_name = mem_page.css("span.fn.org").text
		p mem_name
		mem_pop = mem_page.css("tr.mergedrow > td")[11].text
		p mem_pop
		mem_zip = mem_page.css("span.postal-code").text
		p mem_zip
		mem_top_employer = "N/A"
		# p mem_top_employer 
		mem_jobs_num = jobs_page.css("td.jpc")[41].text
		
		mem_entry = City.find_by(:city_name => mem_name)

		if mem_entry
			City.update(mem_entry.id, {:city_name => mem_name, :zip => mem_zip, :jobs => mem_jobs_num, :population => mem_pop, :top_employer => mem_top_employer})
		else
			City.create(:city_name => mem_name, :zip => mem_zip, :jobs => mem_jobs_num, :population => mem_pop, :top_employer => mem_top_employer)
		end	

		la = HTTParty.get("https://en.wikipedia.org/wiki/Los_Angeles")
		la_page = Nokogiri::HTML(la.body)

		la_name = la_page.css("span.fn.org")[0].text
		p la_name
		la_pop = la_page.css("tr.mergedrow > td")[15].text
		p la_pop
		la_zip = la_page.css("span.postal-code").text
		p la_zip
		la_top_employer = "N/A"
		# p la_top_employer 
		la_jobs_num = jobs_page.css("td.jpc")[42].text
		
		la_entry = City.find_by(:city_name => la_name)

		if la_entry
			City.update(la_entry.id, {:city_name => la_name, :zip => la_zip, :jobs => la_jobs_num, :population => la_pop, :top_employer => la_top_employer})
		else
			City.create(:city_name => la_name, :zip => la_zip, :jobs => la_jobs_num, :population => la_pop, :top_employer => la_top_employer)
		end

		vb = HTTParty.get("https://en.wikipedia.org/wiki/Virginia_Beach,_Virginia")
		vb_page = Nokogiri::HTML(vb.body)

		vb_name = vb_page.css("span.fn.org")[0].text
		p vb_name
		vb_pop = vb_page.css("tr.mergedrow > td")[12].text
		p vb_pop
		vb_zip = vb_page.css("span.postal-code").text
		p vb_zip
		vb_top_employer = "N/A"
		# p vb_top_employer 
		vb_jobs_num = jobs_page.css("td.jpc")[43].text
		
		vb_entry = City.find_by(:city_name => vb_name)

		if vb_entry
			City.update(vb_entry.id, {:city_name => vb_name, :zip => vb_zip, :jobs => vb_jobs_num, :population => vb_pop, :top_employer => vb_top_employer})
		else
			City.create(:city_name => vb_name, :zip => vb_zip, :jobs => vb_jobs_num, :population => vb_pop, :top_employer => vb_top_employer)
		end

		buf = HTTParty.get("https://en.wikipedia.org/wiki/Buffalo,_New_York")
		buf_page = Nokogiri::HTML(buf.body)

		buf_name = buf_page.css("span.fn.org").text
		p buf_name
		buf_pop = buf_page.css("tr.mergedrow > td")[11].text
		p buf_pop
		buf_zip = buf_page.css("span.postal-code").text
		p buf_zip
		buf_top_employer = "N/A"
		# p buf_top_employer 
		buf_jobs_num = jobs_page.css("td.jpc")[44].text
		
		buf_entry = City.find_by(:city_name => buf_name)

		if buf_entry
			City.update(buf_entry.id, {:city_name => buf_name, :zip => buf_zip, :jobs => buf_jobs_num, :population => buf_pop, :top_employer => buf_top_employer})
		else
			City.create(:city_name => buf_name, :zip => buf_zip, :jobs => buf_jobs_num, :population => buf_pop, :top_employer => buf_top_employer)
		end

		lv = HTTParty.get("https://en.wikipedia.org/wiki/Las_Vegas")
		lv_page = Nokogiri::HTML(lv.body)

		lv_name = lv_page.css("span.fn.org").text
		p lv_name
		lv_pop = lv_page.css("tr.mergedrow > td")[11].text
		p lv_pop
		lv_zip = lv_page.css("span.postal-code").text
		p lv_zip
		lv_top_employer = "N/A"
		# p lv_top_employer 
		lv_jobs_num = jobs_page.css("td.jpc")[45].text
		
		lv_entry = City.find_by(:city_name => lv_name)

		if lv_entry
			City.update(lv_entry.id, {:city_name => lv_name, :zip => lv_zip, :jobs => lv_jobs_num, :population => lv_pop, :top_employer => lv_top_employer})
		else
			City.create(:city_name => lv_name, :zip => lv_zip, :jobs => lv_jobs_num, :population => lv_pop, :top_employer => lv_top_employer)
		end

		riv = HTTParty.get("https://en.wikipedia.org/wiki/Riverside,_California")
		riv_page = Nokogiri::HTML(riv.body)

		riv_name = riv_page.css("span.fn.org").text
		p riv_name
		riv_pop = riv_page.css("tr.mergedrow > td")[13].text
		p riv_pop
		riv_zip = riv_page.css("span.postal-code").text
		p riv_zip
		riv_top_employer = riv_page.css('tr > td > a')[24].text
		p riv_top_employer 
		riv_jobs_num = jobs_page.css("td.jpc")[46].text
		
		riv_entry = City.find_by(:city_name => riv_name)

		if riv_entry
			City.update(riv_entry.id, {:city_name => riv_name, :zip => riv_zip, :jobs => riv_jobs_num, :population => riv_pop, :top_employer => riv_top_employer})
		else
			City.create(:city_name => riv_name, :zip => riv_zip, :jobs => riv_jobs_num, :population => riv_pop, :top_employer => riv_top_employer)
		end

		pro = HTTParty.get("https://en.wikipedia.org/wiki/Providence,_Rhode_Island")
		pro_page = Nokogiri::HTML(pro.body)

		pro_name = pro_page.css("span.fn.org")[0].text
		p pro_name
		pro_pop = pro_page.css("tr.mergedrow > td")[11].text
		p pro_pop
		pro_zip = pro_page.css("span.postal-code").text
		p pro_zip
		pro_top_employer = pro_page.css('tr > td > a')[31].text
		p pro_top_employer 
		pro_jobs_num = jobs_page.css("td.jpc")[47].text
		
		pro_entry = City.find_by(:city_name => pro_name)

		if pro_entry
			City.update(pro_entry.id, {:city_name => pro_name, :zip => pro_zip, :jobs => pro_jobs_num, :population => pro_pop, :top_employer => pro_top_employer})
		else
			City.create(:city_name => pro_name, :zip => pro_zip, :jobs => pro_jobs_num, :population => pro_pop, :top_employer => pro_top_employer)
		end

		no = HTTParty.get("https://en.wikipedia.org/wiki/New_Orleans")
		no_page = Nokogiri::HTML(no.body)

		no_name = no_page.css("span.fn.org").text
		p no_name
		no_pop = no_page.css("tr.mergedrow > td")[9].text
		p no_pop
		no_zip = no_page.css("span.postal-code").text
		p no_zip
		no_top_employer = "N/A"
		# p no_top_employer 
		no_jobs_num = jobs_page.css("td.jpc")[48].text
		
		no_entry = City.find_by(:city_name => no_name)

		if no_entry
			City.update(no_entry.id, {:city_name => no_name, :zip => no_zip, :jobs => no_jobs_num, :population => no_pop, :top_employer => no_top_employer})
		else
			City.create(:city_name => no_name, :zip => no_zip, :jobs => no_jobs_num, :population => no_pop, :top_employer => no_top_employer)
		end

		mia = HTTParty.get("https://en.wikipedia.org/wiki/Miami")
		mia_page = Nokogiri::HTML(mia.body)

		mia_name = mia_page.css("span.fn.org").text
		p mia_name
		mia_pop = mia_page.css("tr.mergedrow > td")[15].text
		p mia_pop
		mia_zip = mia_page.css("span.postal-code").text
		p mia_zip
		mia_top_employer = mia_page.css('tr > td > a')[41].text
		p mia_top_employer 
		mia_jobs_num = jobs_page.css("td.jpc")[48].text
		
		mia_entry = City.find_by(:city_name => mia_name)

		if mia_entry
			City.update(mia_entry.id, {:city_name => mia_name, :zip => mia_zip, :jobs => mia_jobs_num, :population => mia_pop, :top_employer => mia_top_employer})
		else
			City.create(:city_name => mia_name, :zip => mia_zip, :jobs => mia_jobs_num, :population => mia_pop, :top_employer => mia_top_employer)
		end

		@cities = City.all

		# respond_to do |format|
		# 	format.json {render :json => @cities.to_json}
		# end

		render json: @cities

		p "SUCCESS"


	end


end
