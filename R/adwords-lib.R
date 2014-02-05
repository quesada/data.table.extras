# TODO: Add comment
# 
# Author: quesada
###############################################################################

qcut2 <- function(x, n) {
	# x is a numeric vector, n is the number of quantiles
	# returns a length(x) vector, with 1:n numeric values for quantiles
	findInterval(x, quantile(x, seq(0, 1, length = n + 1)), all.inside = T)
}


process.campaign.data <- function(campaign.data){
	# campaign is a string with values: spain:21|all devices|de|dach
	# structure explained in: https://docs.google.com/a/getyourguide.com/spreadsheet/ccc?key=0Aj8eDo29SyzRdGNfamlLTkpFVzM1TzI0WTBsd3RSRGc#gid=1
	# we want to have independent columns for these: partner, device, language.targeting, geo.targeting, partner.network
	campaign.data
	
	# returns a data.frame 
	campaign.data = 
			colnames(campaign.data) partner, device, language.targeting, geo.targeting, partner.network
	
}

process.ad.group <- function(){
	# Ad-group is a string with values: valencia:49|f4|führung:3
	# we want to have independent columns for search, category, tour.page, home, location, country
	
	# NOTE: this in-house format is hard to parse.
	# It's not as simple as split by pipes. THere could be 3 or 4 fiels. The first field depends 
	# on campaign. In other words, you cannot parse ad.group without having parsed campaign data.
	# 
	# Modifier is optional; germany never has a modifier
	
	
#	when LP is...	then adgroup structure is		example
#	search			city:id|f5|poi:id|modifier		eiffel tower/ldn eye/madame tussauds
#	category		city:id|f4|category:id|modifier	walking tours {d}/segway {d}
#	tour page		city:id|f6|tourname:id|modifier	andy's tour
#	home (generic)	group|f1|modifier				gyg
#	location		city:id|f3|group|modifier		gyg.com/{d}
#	country			country:id|f2|group|modifier	
	
	colnames = c(search, category, tour.page, home, location, country)
}

