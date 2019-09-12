# realbox
Recode News:
this is a project for Recode built using Flutter. 
it should fetch news from api and get it displayed in different sections.

# Chaneg log:

first commit :  
-this has the app with getting json from API and decoding it.
        not displaying anything from it so far.
-got the splash screen at starting the app.
- start at loading screen
- got the loading screen to get the location and use api.geonames.org to get the country
- also send the request to get the data for articles for TOP Local from newsapi.org.
- then getting that articles and the country (to avoid requesting country again) sent to index page as a Map.
- in index made the TabBar with 7 sections pointing to 7 pages. and search icon.
-started with the search.

Next :
show the (index view) probably as listView using an Article Model.
Make the list scrollable 
finish the search connection.
impliment slide to refresh
load the images after creating them.(similar to https://dev.to/fallenstedt/building-widgets-on-demand-with-flutter-48dd)


(show view) Push to show single news and pop it.
add back button to search and (show view).
