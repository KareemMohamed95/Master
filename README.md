* What is the Master package ?

The Master package wraps all the packages we use in our shiny application.

* Why is it useful ?

It separates the Eduapps-template functionality from the packages functionalities. before the Master package, we had to install each package manually from its url, then refrence it in our template, this is not the case now as I will explain below.

* How does it work ?

To answer this question, let's assume that we have 3 packages that we want use:

packageA, packageB and packageC, each package has 2 functions:

UIInit()-> is called inside the ui.R file

ServerInit() -> is called inside the server.R file

by default , we have to make 3 calls in the ui.R and 3 calls in the server.R files:

ui.R
```R
packageA::UIInit()
packageB::UIInit()
packageC::UIInit()
```

server.R
```R
packageA::ServerInit()
packageB::ServerInit()
packageC::ServerInit()
```
what if we have 100+ packages ? do we want to call them directly in the template ? this might not be a good idea,

this is where the Master package comes in handy, it has the same 2 function -> UIInit(), ServerInit()

the UIInit() of the Master package calls all the UIInit() of packageA, packageB and package C.

the ServerInit() of the Master package calls all the ServerInit() of packageA, packageB and package C.

all we have to do now is simply call the UIInit() and ServerInit() of the Master package in our ui.R and server.R files:

ui.R
```R
Master::UIInit()
```

server.R
```R
Master::ServerInit()
```

If we want to add packages in the future, we no longer need to do anything with the template, just refrence it in the Master Package and make the necessary calls.

* What are the parameters of UIInit() and ServerInit() ?

all the parameters have default values, however, you may want to change them according to your needs.

```R
UIInit <- function(ResourcesURL = "https://www.eduapplications.org/edu-apps/",
                   showMenu = TRUE)
ResourcesURL -> is the external link that points to the location of the CSS and Script files ,in very rare conditions, you might want to change this to your local file 
showMenu -> TRUE if you want to show the MathJax menu, FALSE if you want to hide it
```

```R
ServerInit <- function(mjxMenuHTMLCSS = FALSE,
                       Authorization = "TRUE",
                       observeOnlanguageBtn = TRUE,
                       observeOnviewTutorial = TRUE,
                       observeOnnextBtn = TRUE,
                       observeOnprevBtn = TRUE,
                       observeOnnextBtnCommon = TRUE,
                       observeOnprevBtnCommon = TRUE,
                       env = NULL)
mjxMenuHTMLCSS -> TRUE if you want the MathJax renderer to HTML-CSS, FALSE if you want the MathJax renderer to PreviewHTML
Authorization -> "TRUE" if you are running the application in Development mode or deploying to your shinyapps.io account, "FALSE" if you are deploying the application to westemit account
observeOnlanguageBtn -> TRUE if you want the default observing of the LanguageButton , FALSE if have another observing logic that you want to make in the template
Same observes are the same
env -> must be the shiny server environment if you want any of the default observing to happen
```


