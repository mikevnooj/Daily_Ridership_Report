# this renders the rmarkdown file for the daily ridership report.
# This is the script that will be run in the windows tasks scheduler.

rmarkdown::render(input = 'c:/users/scarter/downloads/R_Projects/Daily_ridership_reporting/Daily_Ridership.Rmd', 
                  output_file = paste0(format(Sys.Date(), "%Y%m%d"), " Preliminary Ridership Report",'.html')) 
