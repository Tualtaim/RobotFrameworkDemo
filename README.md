#Readme

Robot Framework program that tests a webstore with Selenium2library 
or the new Browser library.

To run program:
>robot -d results Tests\Thomann.robot

Variables can be changed from commandline with:
>robot -d results -v SEARCH_TERM:Stratocaster Tests\Thomann.robot

Changeable variables are:

|Variable|Explanation|
|---     |---        |
|${START_URL}|The tested web page|
|${SEARCH_TERM} |The searched item|
|${USERS_PATH_CSV}|Path to the .csv-file with user information|
