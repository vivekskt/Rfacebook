#Developer : Vivek Kumar Srivastava
#Facebook Page Analysis


# install.packages('Rfacebook')
library(Rfacebook)
# Get token from https://developers.facebook.com/tools/explorer/ page for your profile
token <-'EAACEdEose0cBAK8H6ZAXELAmoRyCpaiNU9tVXQL0LbZBxVeltGKFYbZBu70BUzLgxLxKA1WJ5xWVKNyoX1unhrDJIS8ypYKz9VNmONd4EyN4Q0rn7ZCEyQ28SX7FDZCAnIG5RuAuAInNmHZAiUD36uYDHfj0xoDKGipPhW3l5s5P5Dc9giAGTQG0DYpwBx0I0ZD'

#Get user info
myInfo <- getUsers('me', token=token)
#view dataset 
head(myInfo)
#Get User Name
myInfo$name

#get friends
myFriends <- getFriends(token = token)
head(myFriends)

#get minimal details of friends
myFriends1 <- getFriends(token = token,simplify = TRUE)
head(myFriends1)

#Post Status
text <- 'Wow!! RStudio works'
sts <- updateStatus(text, token = token)
