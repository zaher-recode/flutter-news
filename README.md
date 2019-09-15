# realbox
Recode News:
this is a project for Recode built using Flutter. 
it should fetch news from api and get it displayed in different sections.


# Main Features:
- Fetch News from newsapi.org and display them in a similar design to the one given.
- app gets current location during loading screen, and use geonames.org API to ger current country. and use it to get related news.
- Exploring news with respect to categories.
- news in French :) ( Chinese and Arabic was in plan but as the api returns null/no actual content it was useless to show ).
- Search News.
- tap on source name in any news to show the news available (  `this is dependant on the API having ID for that source`)
- Error handling:
  - if no location accessed ( US news by default).
  - if no search word was entered.
  - if no results were found.
  - all nulls from the api in response.
-  added Read More button to read the rest of news on it's source website as API only gives 256 characters in contents for developers.
- removed the `+[xxx chars]` using regexp.
- show the time since the news was published.
- built to be modular and dry.
- Added SplashScreen and Icon.

