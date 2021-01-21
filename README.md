#Readme

Robot Framework program that tests a webstore (Thomann) with Seleniumlibrary 
or the new Browser library. For SeleniumLibrary the browser drivers need 
to be installed and for Browser library node.js has to be installed.

To run program:
>robot -d results Tests\Thomann.robot

The Search term variable can be changed from commandline with:
>robot -d results -v SEARCH_TERM:Stratocaster Tests\Thomann.robot

