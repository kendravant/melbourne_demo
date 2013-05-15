#From a suitable city list, calls get.geocodes and builds up a matrix of lat, lon pairs which is then converted to a data frame

get.lat.lon.list <- function(cities) 
{
	city.list <- cities
	lat.lon <- c()
	for (city in city.list)
		{
		tmp <- get.geocode(city)
		lat.lon <- rbind(tmp,lat.lon)
		}

	colnames(lat.lon) <- c("Latitude","Longitude")
	print("Got to here")
	rownames(lat.lon) <- rev(city.list)

	lat.lon <- as.data.frame(lat.lon)
	return(lat.lon)
}
