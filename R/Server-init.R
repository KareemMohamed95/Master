ServerInit <- function(mjxMenuHTMLCSS = FALSE,
                       Authorization = "TRUE",
                       observeOnlanguageBtn = TRUE,
                       observeOnviewTutorial = TRUE,
                       observeOnnextBtn = TRUE,
                       observeOnprevBtn = TRUE,
                       observeOnnextBtnCommon = TRUE,
                       observeOnprevBtnCommon = TRUE,
                       env = NULL){
  AppInitialization::ServerInit(mjxMenuHTMLCSS,
                                Authorization,
                                observeOnlanguageBtn,
                                observeOnviewTutorial,
                                observeOnnextBtn,
                                observeOnprevBtn,
                                observeOnnextBtnCommon,
                                observeOnprevBtnCommon,
                                env)
  Translations::ServerInit()
  localStorage::ServerInit()
}
