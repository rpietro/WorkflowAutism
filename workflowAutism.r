#######################################################################################
#template_secondary_data_analysis.R is licensed under a Creative Commons Attribution - Non commercial 3.0 Unported License. see full license at the end of this file.
#######################################################################################
#this script follows a combination of the guidelines proposed by Hadley Wickham http://goo.gl/c04kq as well as using the formatR package http://goo.gl/ri6ky
#if this is the first time you are conducting an analysis using this protocol, please watch http://goo.gl/DajIN while following step by step

#link to manuscript

#####################################################################################
#SETTING ENVIRONMENT
#####################################################################################
#remove all objects and then check
rm(list = ls())
ls()
#dettach all packages
detach()

#command below will install individual and is only run once. remove the hash tag if this is the first time you are running the code on RStudio, and then you can add the hash tag again
#install.packages("car", repos="http://cran.r-project.org")
#install.packages("ggplot2", repos="http://cran.r-project.org")

#command below will install each package. if you run this script from the beginning you need to run every single one again
library("ggplot2")
library(rtv)
library(chron)

#####################################################################################
#IMPORTING DATA AND RECODING
#####################################################################################

#if you are using a file that is local to your computer, then replace path below with path to the data file in your computer. command will send all the data into the templateData object. replace the word template.data by a name that might easier for you to remember and that represents your data. If you don't know where to get the path to your file, please watch http://goo.gl/i0cPh
workf <- read.csv("/Users/rpietro/Google Drive/R/nonpublicdata_publications/workflowAutism/autism.csv")

#below will view data in a spreadsheet format. notice that in this all subsequent commands you have to replace templateData with whatever name you chose for your data object in the previous command
View(workf)

#getting column (variable) names
names(workf)

#fixing date format
workf$date <- as.Date(workf$date, format = '%Y-%m-%d')
workf$date <- drtv(workf$date)
class(workf$date)
drtvf (workf$date)
workf$date

plot(workf$date, workf$enrolled)
plot(workf$date, workf$approached)
plot(workf$date, workf$total_appointments)
plot(workf$date, workf$discharges_per_month)
abline (v=11, lty=2)


#######################################################################################
#template_secondary_data_analysis.R is licensed under a Creative Commons Attribution - Non commercial 3.0 Unported License. You are free: to Share — to copy, distribute and transmit the work to Remix — to adapt the work, under the following conditions: Attribution — You must attribute the work in the manner specified by the author or licensor (but not in any way that suggests that they endorse you or your use of the work). Noncommercial — You may not use this work for commercial purposes. With the understanding that: Waiver — Any of the above conditions can be waived if you get permission from the copyright holder. Public Domain — Where the work or any of its elements is in the public domain under applicable law, that status is in no way affected by the license. Other Rights — In no way are any of the following rights affected by the license: Your fair dealing or fair use rights, or other applicable copyright exceptions and limitations; The author's moral rights; Rights other persons may have either in the work itself or in how the work is used, such as publicity or privacy rights. Notice — For any reuse or distribution, you must make clear to others the license terms of this work. The best way to do this is with a link to this web page. For more details see http://creativecommons.org/licenses/by-nc/3.0/
#######################################################################################
