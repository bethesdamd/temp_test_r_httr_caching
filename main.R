library(httr)
print("================================================================")
e <- GET("https://raw.githubusercontent.com/bethesdamd/temp_test_r_httr_caching/master/data.csv")
cache_info(e)   #  this tells you what the Expires date is for the content, which is determined by the server
e$date  # I think this is the date this data was retrieved
#rerequest(e)$date
print(e)



