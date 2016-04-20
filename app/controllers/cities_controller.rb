class CitiesController < ApplicationController
	
	def index
		p "INDEX WORKING"

		# san_jose = HTTParty.get("https://en.wikipedia.org/wiki/San_Jose,_California")
		# san_jose_page = Nokogiri::HTML(san_jose.body)

		# san_jose_name = san_jose_page.css("span.fn.org").text

		# san_jose_pop = san_jose_page.css("tr.mergedrow > td")[19].text
		
		# san_jose_zip = san_jose_page.css("span.postal-code").text
		# p san_jose_zip

		# san_jose_top_employer = san_jose_page.css("table.wikitable > tr > td")[128].text
		# p san_jose_top_employer

		jobs = HTTParty.get("http://www.indeed.com/jobtrends/percapita")
		jobs_page = Nokogiri::HTML(jobs.body)

		# san_jose_jobs_num = jobs_page.css("td.jpc")[0].text
		# p san_jose_jobs_num

		# san_jose_entry = City.find_by(:city_name => san_jose_name)

		# if san_jose_entry
		# 	City.update(san_jose_entry.id, {:city_name => san_jose_name, :zip => san_jose_zip, :jobs => san_jose_jobs_num, :population => san_jose_pop, :top_employer => san_jose_top_employer})
		# else
		# 	City.create(:city_name => san_jose_name, :zip => san_jose_zip, :jobs => san_jose_jobs_num, :population => san_jose_pop, :top_employer => san_jose_top_employer)
		# end

		# slc = HTTParty.get("https://en.wikipedia.org/wiki/Salt_Lake_City")
		# slc_page = Nokogiri::HTML(slc.body)

		# slc_name = slc_page.css("span.fn.org").text
		# # p slc_name
		# slc_pop = slc_page.css("tr.mergedrow > td")[8].text
		# # p slc_pop
		# slc_zip = slc_page.css("span.postal-code").text
		# # p slc_zip
		# slc_jobs_num = jobs_page.css("td.jpc")[1].text
		# # p slc_jobs_num

		# slc_entry = City.find_by(:city_name => slc_name)

		# if slc_entry
		# 	City.update(slc_entry.id, {:city_name => slc_name, :zip => slc_zip, :jobs => slc_jobs_num, :population => slc_pop, :top_employer => "N/A"})
		# else
		# 	City.create(:city_name => slc_name, :zip => slc_zip, :jobs => slc_jobs_num, :population => slc_pop, :top_employer => "N/A")
		# end

		# ral = HTTParty.get("https://en.wikipedia.org/wiki/Raleigh,_North_Carolina")
		# ral_page = Nokogiri::HTML(ral.body)

		# ral_name = ral_page.css("span.fn.org").text
		# ral_pop = ral_page.css("tr.mergedrow > td")[8].text
		# ral_zip = ral_page.css("tr.mergedrow > td > a.mw-redirect")[0].text
		# ral_top_employer = ral_page.css("tr > td > a")[20].text
		# # p ral_top_employer
		# ral_jobs_num = jobs_page.css("td.jpc")[2].text

		# ral_entry = City.find_by(:city_name => ral_name)

		# if ral_entry
		# 	City.update(ral_entry.id, {:city_name => ral_name, :zip => ral_zip, :jobs => ral_jobs_num, :population => ral_pop, :top_employer => ral_top_employer})
		# else
		# 	City.create(:city_name => ral_name, :zip => ral_zip, :jobs => ral_jobs_num, :population => ral_pop, :top_employer => ral_top_employer)
		# end

		# den = HTTParty.get("https://en.wikipedia.org/wiki/Denver")
		# den_page = Nokogiri::HTML(den.body)

		# den_name = den_page.css("span.fn.org").text
		# # p den_name
		# den_pop = den_page.css("tr.mergedrow > td")[15].text
		# # p den_pop
		# den_zip = den_page.css("span.postal-code").text
		# # p den_zip
		# den_top_employer = 'N/A'
		
		# den_jobs_num = jobs_page.css("td.jpc")[3].text
		# # p den_jobs_num

		# den_entry = City.find_by(:city_name => den_name)

		# if den_entry
		# 	City.update(den_entry.id, [:city_name => den_name, :zip => den_zip, :jobs => den_jobs_num, :population => den_pop, :top_employer => den_top_employer})
		# else
		# 	City.create(:city_name => den_name, :zip => den_zip, :jobs => den_jobs_num, :population => den_pop, :top_employer => den_top_employer)
		# end

		# seattle = HTTParty.get("https://en.wikipedia.org/wiki/Seattle")
		# seattle_page = Nokogiri::HTML(seattle.body)

		# seattle_name = seattle_page.css("span.fn.org").text
		# # p seattle_name
		# seattle_pop = seattle_page.css("tr.mergedrow > td")[15].text
		# # p seattle_pop
		# seattle_zip = seattle_page.css("span.postal-code").text
		# # p seattle_zip
		# seattle_top_employer = 'N/A'
		
		# seattle_jobs_num = jobs_page.css("td.jpc")[4].text
		# # p seattle_jobs_num		

		# seattle_entry = City.find_by(:city_name => seattle_name)

		# if seattle_entry
		# 	City.update(seattle_entry.id, {:city_name => seattle_name, :zip => seattle_zip, :jobs => seattle_jobs_num, :population => seattle_pop, :top_employer => seattle_top_employer})
		# else
		# 	City.create(:city_name => seattle_name, :zip => seattle_zip, :jobs => seattle_jobs_num, :population => seattle_pop, :top_employer => seattle_top_employer)
		# end

		# austin = HTTParty.get("https://en.wikipedia.org/wiki/Austin,_Texas")
		# austin_page = Nokogiri::HTML(austin.body)

		# austin_name = austin_page.css("span.fn.org").text
		# # p austin_name
		# austin_pop = austin_page.css("tr.mergedrow > td")[11].text
		# # p austin_pop
		# austin_zip = seattle_page.css("span.postal-code").text
		# # p austin_zip
		# austin_top_employer = 'N/A'
		
		# austin_jobs_num = jobs_page.css("td.jpc")[5].text
		# # p austin_jobs_num		

		# austin_entry = City.find_by(:city_name => austin_name)

		# if austin_entry
		# 	City.update(austin_entry.id, {:city_name => austin_name, :zip => austin_zip, :jobs => austin_jobs_num, :population => austin_pop, :top_employer => austin_top_employer})
		# else
		# 	City.create(:city_name => austin_name, :zip => austin_zip, :jobs => austin_jobs_num, :population => austin_pop, :top_employer => austin_top_employer)
		# end		

		# nashville = HTTParty.get("https://en.wikipedia.org/wiki/Nashville,_Tennessee")
		# nashville_page = Nokogiri::HTML(nashville.body)

		# nashville_name = nashville_page.css("span.fn.org").text
		# # p nashville_name
		# nashville_pop = nashville_page.css("tr.mergedrow > td")[10].text
		# # p nashville_pop
		# nashville_zip = nashville_page.css("span.postal-code").text
		# # p nashville_zip
		# nashville_top_employer = nashville_page.css("tr > td")[290].text
		# # p nashville_top_employer 
		# nashville_jobs_num = jobs_page.css("td.jpc")[6].text
		# # p nashville_jobs_num		

		# nashville_entry = City.find_by(:city_name => nashville_name)

		# if nashville_entry
		# 	City.update(nashville_entry.id, {:city_name => nashville_name, :zip => nashville_zip, :jobs => nashville_jobs_num, :population => nashville_pop, :top_employer => nashville_top_employer})
		# else
		# 	City.create(:city_name => nashville_name, :zip => nashville_zip, :jobs => nashville_jobs_num, :population => nashville_pop, :top_employer => nashville_top_employer)
		# end		

		# richmond = HTTParty.get("https://en.wikipedia.org/wiki/Richmond,_Virginia")
		# richmond_page = Nokogiri::HTML(richmond.body)

		# richmond_name = richmond_page.css("span.fn.org").text
		# # p richmond_name
		# richmond_pop = richmond_page.css("tr.mergedrow > td")[9].text
		# p richmond_pop
		# richmond_zip = richmond_page.css("span.postal-code").text
		# p richmond_zip
		# richmond_top_employer = "N/A"
		# # p richmond_top_employer 
		# richmond_jobs_num = jobs_page.css("td.jpc")[7].text
		# p richmond_jobs_num		

		# richmond_entry = City.find_by(:city_name => richmond_name)

		# if richmond_entry
		# 	City.update(richmond_entry.id, {:city_name => richmond_name, :zip => richmond_zip, :jobs => richmond_jobs_num, :population => richmond_pop, :top_employer => richmond_top_employer})
		# else
		# 	City.create(:city_name => richmond_name, :zip => richmond_zip, :jobs => richmond_jobs_num, :population => richmond_pop, :top_employer => richmond_top_employer)
		# end		

		# indy = HTTParty.get("https://en.wikipedia.org/wiki/Indianapolis")
		# indy_page = Nokogiri::HTML(indy.body)

		# indy_name = indy_page.css("span.fn.org").text
		# p indy_name
		# indy_pop = indy_page.css("tr.mergedrow > td")[12].text
		# p indy_pop
		# indy_zip = indy_page.css("span.postal-code").text
		# p indy_zip
		# indy_top_employer = "N/A"
		# # p indy_top_employer 
		# indy_jobs_num = jobs_page.css("td.jpc")[8].text
		# p indy_jobs_num		

		# indy_entry = City.find_by(:city_name => indy_name)

		# if indy_entry
		# 	City.update(indy_entry.id, {:city_name => indy_name, :zip => indy_zip, :jobs => indy_jobs_num, :population => indy_pop, :top_employer => indy_top_employer})
		# else
		# 	City.create(:city_name => indy_name, :zip => indy_zip, :jobs => indy_jobs_num, :population => indy_pop, :top_employer => indy_top_employer)
		# end		

		# minn = HTTParty.get("https://en.wikipedia.org/wiki/Minneapolis")
		# minn_page = Nokogiri::HTML(minn.body)

		# minn_name = minn_page.css("span.fn.org").text
		# p minn_name
		# minn_pop = minn_page.css("tr.mergedrow > td")[14].text
		# p minn_pop
		# minn_zip = minn_page.css("span.postal-code").text
		# p minn_zip
		# minn_top_employer = "N/A"
		# # p indy_top_employer 
		# minn_jobs_num = jobs_page.css("td.jpc")[9].text
		# p minn_jobs_num		

		# minn_entry = City.find_by(:city_name => minn_name)

		# if minn_entry
		# 	City.update(minn_entry.id, {:city_name => minn_name, :zip => minn_zip, :jobs => minn_jobs_num, :population => minn_pop, :top_employer => minn_top_employer})
		# else
		# 	City.create(:city_name => minn_name, :zip => minn_zip, :jobs => minn_jobs_num, :population => minn_pop, :top_employer => minn_top_employer)
		# end		

		# kc = HTTParty.get("https://en.wikipedia.org/wiki/Kansas_City,_Missouri")
		# kc_page = Nokogiri::HTML(kc.body)

		# kc_name = kc_page.css("span.fn.org").text
		# p kc_name
		# kc_pop = kc_page.css("tr.mergedrow > td")[10].text
		# p kc_pop
		# kc_zip = kc_page.css("span.postal-code").text
		# p kc_zip
		# kc_top_employer = kc_page.css("table.wikitable > tr > td")[360].text
		# p kc_top_employer 
		# kc_jobs_num = jobs_page.css("td.jpc")[10].text
		# # p kc_jobs_num		

		# kc_entry = City.find_by(:city_name => kc_name)

		# if kc_entry
		# 	City.update(kc_entry.id, {:city_name => kc_name, :zip => kc_zip, :jobs => kc_jobs_num, :population => kc_pop, :top_employer => kc_top_employer})
		# else
		# 	City.create(:city_name => kc_name, :zip => kc_zip, :jobs => kc_jobs_num, :population => kc_pop, :top_employer => kc_top_employer)
		# end		

		# lou = HTTParty.get("https://en.wikipedia.org/wiki/Louisville,_Kentucky")
		# lou_page = Nokogiri::HTML(lou.body)

		# lou_name = lou_page.css("span.fn.org").text
		# p lou_name
		# lou_pop = lou_page.css("tr.mergedrow > td")[13].text
		# p lou_pop
		# lou_zip = lou_page.css("span.postal-code").text
		# p lou_zip
		# lou_top_employer = "N/A"
		# p lou_top_employer 
		# lou_jobs_num = jobs_page.css("td.jpc")[11].text
		# # p kc_jobs_num		

		# lou_entry = City.find_by(:city_name => lou_name)

		# if lou_entry
		# 	City.update(lou_entry.id,{:city_name => lou_name, :zip => lou_zip, :jobs => lou_jobs_num, :population => lou_pop, :top_employer => lou_top_employer})
		# else
		# 	City.create(:city_name => lou_name, :zip => lou_zip, :jobs => lou_jobs_num, :population => lou_pop, :top_employer => lou_top_employer)
		# end		

		# boston = HTTParty.get("https://en.wikipedia.org/wiki/Boston")
		# boston_page = Nokogiri::HTML(boston.body)

		# boston_name = boston_page.css("span.fn.org").text
		# # p boston_name
		# boston_pop = boston_page.css("tr.mergedrow > td")[17].text
		# # p boston_pop
		# boston_zip = boston_page.css("span.postal-code").text
		# # p boston_zip
		# boston_top_employer = "N/A"
		# # p boston_top_employer 
		# boston_jobs_num = jobs_page.css("td.jpc")[12].text
		

		# boston_entry = City.find_by(:city_name => boston_name)

		# if boston_entry
		# 	City.update(boston_entry.id, {:city_name => boston_name, :zip => boston_zip, :jobs => boston_jobs_num, :population => boston_pop, :top_employer => boston_top_employer})
		# else
		# 	City.create(:city_name => boston_name, :zip => boston_zip, :jobs => boston_jobs_num, :population => boston_pop, :top_employer => boston_top_employer)
		# end		

		# hart = HTTParty.get("https://en.wikipedia.org/wiki/Hartford,_Connecticut")
		# hart_page = Nokogiri::HTML(hart.body)

		# hart_name = hart_page.css("span.fn.org").text
		# p hart_name
		# hart_pop = hart_page.css("tr.mergedrow > td")[17].text
		# p hart_pop
		# hart_zip = hart_page.css("span.postal-code").text
		# p hart_zip
		# hart_top_employer = "N/A"
		# # p hart_top_employer 
		# hart_jobs_num = jobs_page.css("td.jpc")[13].text
		
		# hart_entry = City.find_by(:city_name => hart_name)

		# if hart_entry
		# 	City.update(hart_entry.id, {:city_name => hart_name, :zip => hart_zip, :jobs => hart_jobs_num, :population => hart_pop, :top_employer => hart_top_employer})
		# else
		# 	City.create(:city_name => hart_name, :zip => hart_zip, :jobs => hart_jobs_num, :population => hart_pop, :top_employer => hart_top_employer)
		# end		

		# col = HTTParty.get("https://en.wikipedia.org/wiki/Columbus,_Ohio")
		# col_page = Nokogiri::HTML(col.body)

		# col_name = col_page.css("span.fn.org").text
		# p col_name
		# col_pop = col_page.css("tr.mergedrow > td")[11].text
		# p col_pop
		# col_zip = col_page.css("span.postal-code").text
		# p col_zip
		# col_top_employer = "N/A"
		# # p hart_top_employer 
		# col_jobs_num = jobs_page.css("td.jpc")[14].text
		
		# col_entry = City.find_by(:city_name => col_name)

		# if col_entry
		# 	City.update(col_entry.id, {:city_name => col_name, :zip => col_zip, :jobs => col_jobs_num, :population => col_pop, :top_employer => col_top_employer})
		# else
		# 	City.create(:city_name => col_name, :zip => col_zip, :jobs => col_jobs_num, :population => col_pop, :top_employer => col_top_employer)
		# end	

		# dc = HTTParty.get("https://en.wikipedia.org/wiki/Washington,_D.C.")
		# dc_page = Nokogiri::HTML(dc.body)

		# dc_name = dc_page.css("span.fn.org").text
		# p dc_name
		# dc_pop = dc_page.css("tr.mergedrow > td")[13].text
		# p dc_pop
		# dc_zip = dc_page.css("span.postal-code").text
		# p dc_zip
		# dc_top_employer = "N/A"
		# # p dc_top_employer 
		# dc_jobs_num = jobs_page.css("td.jpc")[15].text
		
		# dc_entry = City.find_by(:city_name => dc_name)

		# if dc_entry
		# 	City.update(dc_entry.id, {:city_name => dc_name, :zip => dc_zip, :jobs => dc_jobs_num, :population => dc_pop, :top_employer => dc_top_employer})
		# else
		# 	City.create(:city_name => dc_name, :zip => dc_zip, :jobs => dc_jobs_num, :population => dc_pop, :top_employer => dc_top_employer)
		# end	

		# pitt = HTTParty.get("https://en.wikipedia.org/wiki/Pittsburgh")
		# pitt_page = Nokogiri::HTML(pitt.body)

		# pitt_name = pitt_page.css("span.fn.org").text
		# p pitt_name
		# pitt_pop = pitt_page.css("tr.mergedrow > td")[21].text
		# p pitt_pop
		# pitt_zip = pitt_page.css("span.postal-code").text
		# p pitt_zip
		# pitt_top_employer = "N/A"
		# # p pitt_top_employer 
		# pitt_jobs_num = jobs_page.css("td.jpc")[16].text
		
		# pitt_entry = City.find_by(:city_name => pitt_name)

		# if pitt_entry
		# 	City.update(pitt_entry.id, {:city_name => pitt_name, :zip => pitt_zip, :jobs => pitt_jobs_num, :population => pitt_pop, :top_employer => pitt_top_employer})
		# else
		# 	City.create(:city_name => pitt_name, :zip => pitt_zip, :jobs => pitt_jobs_num, :population => pitt_pop, :top_employer => pitt_top_employer)
		# end	

		# sf = HTTParty.get("https://en.wikipedia.org/wiki/San_Francisco")
		# sf_page = Nokogiri::HTML(sf.body)

		# sf_name = sf_page.css("span.fn.org").text
		# p sf_name
		# sf_pop = sf_page.css("tr.mergedrow > td")[20].text
		# p sf_pop
		# sf_zip = sf_page.css("span.postal-code").text
		# p sf_zip
		# sf_top_employer = "N/A"
		# # p sf_top_employer 
		# sf_jobs_num = jobs_page.css("td.jpc")[17].text
		
		# sf_entry = City.find_by(:city_name => sf_name)

		# if sf_entry
		# 	City.update(sf_entry.id, {:city_name => sf_name, :zip => sf_zip, :jobs => sf_jobs_num, :population => sf_pop, :top_employer => sf_top_employer})
		# else
		# 	City.create(:city_name => sf_name, :zip => sf_zip, :jobs => sf_jobs_num, :population => sf_pop, :top_employer => sf_top_employer)
		# end	

		# cin = HTTParty.get("https://en.wikipedia.org/wiki/Cincinnati")
		# cin_page = Nokogiri::HTML(cin.body)

		# cin_name = cin_page.css("span.fn.org").text
		# p cin_name
		# cin_pop = cin_page.css("tr.mergedrow > td")[12].text
		# p cin_pop
		# cin_zip = cin_page.css("span.postal-code").text
		# p cin_zip
		# cin_top_employer = "N/A"
		# # p cin_top_employer 
		# cin_jobs_num = jobs_page.css("td.jpc")[18].text
		
		# cin_entry = City.find_by(:city_name => cin_name)

		# if cin_entry
		# 	City.update(cin_entry.id, {:city_name => cin_name, :zip => cin_zip, :jobs => cin_jobs_num, :population => cin_pop, :top_employer => cin_top_employer})
		# else
		# 	City.create(:city_name => cin_name, :zip => cin_zip, :jobs => cin_jobs_num, :population => cin_pop, :top_employer => cin_top_employer)
		# end	

		# cle = HTTParty.get("https://en.wikipedia.org/wiki/Cleveland")
		# cle_page = Nokogiri::HTML(cle.body)

		# cle_name = cle_page.css("span.fn.org").text
		# p cle_name
		# cle_pop = cle_page.css("tr.mergedrow > td")[14].text
		# p cle_pop
		# cle_zip = cle_page.css("span.postal-code").text
		# p cle_zip
		# cle_top_employer = "N/A"
		# # p cle_top_employer 
		# cle_jobs_num = jobs_page.css("td.jpc")[19].text
		
		# cle_entry = City.find_by(:city_name => cle_name)

		# if cle_entry
		# 	City.update(cle_entry.id, {:city_name => cle_name, :zip => cle_zip, :jobs => cle_jobs_num, :population => cle_pop, :top_employer => cle_top_employer})
		# else
		# 	City.create(:city_name => cle_name, :zip => cle_zip, :jobs => cle_jobs_num, :population => cle_pop, :top_employer => cle_top_employer)
		# end	

		# atl = HTTParty.get("https://en.wikipedia.org/wiki/Atlanta")
		# atl_page = Nokogiri::HTML(atl.body)

		# atl_name = atl_page.css("span.fn.org").text
		# p atl_name
		# atl_pop = atl_page.css("tr.mergedrow > td")[14].text
		# p atl_pop
		# atl_zip = atl_page.css("span.postal-code").text
		# p atl_zip
		# atl_top_employer = "N/A"
		# # p cle_top_employer 
		# atl_jobs_num = jobs_page.css("td.jpc")[20].text
		
		# atl_entry = City.find_by(:city_name => atl_name)

		# if atl_entry
		# 	City.update(atl_entry.id, {:city_name => atl_name, :zip => atl_zip, :jobs => atl_jobs_num, :population => atl_pop, :top_employer => atl_top_employer})
		# else
		# 	City.create(:city_name => atl_name, :zip => atl_zip, :jobs => atl_jobs_num, :population => atl_pop, :top_employer => atl_top_employer)
		# end	

		# dal = HTTParty.get("https://en.wikipedia.org/wiki/Dallas")
		# dal_page = Nokogiri::HTML(dal.body)

		# dal_name = dal_page.css("span.fn.org").text
		# p dal_name
		# dal_pop = dal_page.css("tr.mergedrow > td")[12].text
		# p dal_pop
		# dal_zip = dal_page.css("tr.mergedrow > td")[22].text
		# p dal_zip
		# dal_top_employer = "N/A"
		# # p dal_top_employer 
		# dal_jobs_num = jobs_page.css("td.jpc")[21].text
		
		# dal_entry = City.find_by(:city_name => dal_name)

		# if dal_entry
		# 	City.update(dal_entry.id, {:city_name => dal_name, :zip => dal_zip, :jobs => dal_jobs_num, :population => dal_pop, :top_employer => dal_top_employer})
		# else
		# 	City.create(:city_name => dal_name, :zip => dal_zip, :jobs => dal_jobs_num, :population => dal_pop, :top_employer => dal_top_employer)
		# end	


		# port = HTTParty.get("https://en.wikipedia.org/wiki/Portland,_Oregon")
		# port_page = Nokogiri::HTML(port.body)

		# port_name = port_page.css("span.fn.org")[0].text
		# p port_name
		# port_pop = port_page.css("tr.mergedrow > td")[14].text
		# p port_pop
		# port_zip = port_page.css("span.postal-code").text
		# p port_zip
		# port_top_employer = "N/A"
		# # p port top_employer 
		# port_jobs_num = jobs_page.css("td.jpc")[22].text
		
		# port_entry = City.find_by(:city_name => port_name)

		# if port_entry
		# 	City.update(port_entry.id, {:city_name => port_name, :zip => port_zip, :jobs => port_jobs_num, :population => port_pop, :top_employer => port_top_employer})
		# else
		# 	City.create(:city_name => port_name, :zip => port_zip, :jobs => port_jobs_num, :population => port_pop, :top_employer => port_top_employer)
		# end	

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

	end

end

    	
    