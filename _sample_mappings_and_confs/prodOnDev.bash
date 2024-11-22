#-*-sh-*-
#==============================================================
#
#  Abs:  Setup EPICS CA and PVA environment variables to access
#        production PVs from the development network
#
#  Name: envSet_prodOnDev.bash
#
#  Facility:  SLAC
#
#--------------------------------------------------------------
#  Mod:
#	18-Jun-2018, B. Hill (bhill)
#		Created new env script for accessing prod PVs via gateway on lcls-prod01
#
#==============================================================
#
# Set LCLS CA and PVA environment variables to access
# production PVs from the development network
#

# Use Default PVA PORT numbers
export EPICS_PVA_SERVER_PORT=5075
export EPICS_PVA_BROADCAST_PORT=5076

# Use explicit EPICS_PVA_ADDR_LIST
export EPICS_PVA_AUTO_ADDR_LIST=NO
# NOTE: PVA Gateway not setup as of 11/1/2019.  Recheck settings on PVA gateway deployment
# Gateway to PROD, st.gwLCLSPUB
export EPICS_PVA_ADDR_LIST="lcls-prod01:5068"
# Gateway st.gwEXP2FACET
export EPICS_PVA_ADDR_LIST="${EPICS_PVA_ADDR_LIST} lcls-prod01:5063"
# Add mcc-dmz and mccas0
export EPICS_PVA_ADDR_LIST="${EPICS_PVA_ADDR_LIST} mcc-dmz mccas0.slac.stanford.edu"

export EPICS_CA_AUTO_ADDR_LIST=NO
export EPICS_CA_ADDR_LIST="lcls-prod01:5068 lcls-prod01:5063 mcc-dmz"
export EPICS_CA_REPEATER_PORT="5069"
export EPICS_CA_SERVER_PORT="5068"

export EPICS_TS_NTP_INET="134.79.48.11"
export EPICS_IOC_LOG_INET="134.79.151.21"
