* What is the Master package ?

The Master package wraps all the packages we use in our shiny application.

* Why is it useful ?

It separates the Eduapps-template functionality from the packages functionalities. before the Master package, we had to install each package manually from its url, then refrence it in our template, this is not the case now as I will explain below.

* How does it work ?

To answer this question, let's assume that we have 3 packages that we want use:

packageA, packageB and packageC, each package has 2 functions:

UIInit.R -> is called inside the ui.R file

ServerInit.R -> is called inside the server.R file

