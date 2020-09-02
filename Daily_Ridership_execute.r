# this renders the rmarkdown file for the daily ridership report.
# This is the script that will be run in the windows tasks scheduler.

# library(blastula)

Sys.setenv(RSTUDIO_PANDOC="C:/Program Files/RStudio/bin/pandoc")

rmarkdown::render(input = 'c:/users/Michael.Nugent/Documents/Projects/R_Projects/nooj/Reporting/Daily/Daily_Ridership_Report/Daily_Ridership.Rmd', 
                  output_file = paste0(format(Sys.Date(), "%Y%m%d"), " Preliminary Ridership Report",'.html')) 


# x <- blastula::render_email(input = 'C:/Users/Michael.Nugent/Documents/Projects/R_Projects/nooj/Reporting/Daily/Daily_Ridership_Report/Daily_Ridership.Rmd')
#  
# x %>% smtp_send(
#   to = c("michael.nugent@indygo.net","michaelvnugent@gmail.com")
#   ,from = "michael.nugent@indygo.net"
#   ,subject = "TEST"
#   ,credentials = creds_key("outlook")
#   )

