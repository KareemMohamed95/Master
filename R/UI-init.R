UIInit <- function(ResourcesURL = "https://www.eduapplications.org/edu-apps/",
                   showMenu = TRUE){
  return(tagList(
    AppInitialization::UIInit(ResourcesURL),
    Translations::UIInit(showMenu),
    localStorage::UIInit()
  ))
}
