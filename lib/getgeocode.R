get.geocode <- function(location)
{							
  require(RJSONIO)
  #Define parts of the URL
  base   <- "http://maps.googleapis.com/maps/api/geocode/" 
  output.type <- "json?"
  address <- paste("&address=", location, sep="")
  region  <- paste("&region=", "nz", sep="") 
  sensor  <- paste("&sensor=", "false", sep="")
  
  #Assemble the URL
  address.url <- paste(base, output.type, address, region, sensor,sep="")
  #print(paste("Fetching geocode for ", location, " using ", address.url,  sep=""))
  print(paste("Fetching geocode information for ", location, sep=""))
  
  #Get the file
  geocode <- fromJSON(address.url)
  
  # Return all the information retrieved in a data frame
  # return(as.data.frame(geocode))
  
  # Return just the latitude and longitude 
  geocode <- as.data.frame(geocode)
  lat.lon <- geocode$results.geometry.location
  return(lat.lon)
}