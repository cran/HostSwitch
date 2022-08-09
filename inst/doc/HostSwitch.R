## ----global_options, include=FALSE--------------------------------------------
knitr::opts_chunk$set(fig.width=8.5, fig.height=5.5, fig.align='center', warning=FALSE, message=FALSE, cache = T)

## ---- eval=FALSE--------------------------------------------------------------
#  install.packages("HostSwitch")

## ---- eval=FALSE--------------------------------------------------------------
#  devtools::install_github(repo = "berndpanassiti/HostSwitch",build_vignettes = TRUE)

## -----------------------------------------------------------------------------
library(HostSwitch)
citation("HostSwitch")

## ---- eval=F------------------------------------------------------------------
#  shinyHostSwitch()

## -----------------------------------------------------------------------------
# using only 20 generations and 1 simulation, others arguments left to default values
# see ?simHostSwitch for more arguments
simulated_quantities = simHostSwitch(seed=123,n_sim=1,n_generation=20) 

## -----------------------------------------------------------------------------
summaryHostSwitch(simulated_quantities) 

## -----------------------------------------------------------------------------
gg1 = plotHostSwitch(simulated_quantities, sim_n = 1) # use n_sim to select a specific simulation
gg1
#gg1 + xlim(0,10) # limit x-axis from 0 to 10 generations

## -----------------------------------------------------------------------------
# see ?simHostSwitch for more arguments
m1 = simHostSwitch(seed=123,n_sim=100,b=10) 
m2 = simHostSwitch(seed=123,n_sim=100,b=15) 

# see ?testHostSwitch for more arguments
testHostSwitch(simulated_quantities1=m1,simulated_quantities2=m2,parameter="j",test="t",plot=FALSE)

