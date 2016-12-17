install_if_not_present <- function(name) {
    if (!(name %in% rownames(installed.packages()))) {
        install.packages(name)
    }
}

# These are the mandatory dependencies in this project

install_if_not_present("RODBC")
install_if_not_present("shiny")
install_if_not_present("leaflet")
install_if_not_present("dplyr")
install_if_not_present("rmarkdown")
install_if_not_present("ggmap")
install_if_not_present("DT")
