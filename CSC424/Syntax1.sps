﻿* Encoding: UTF-8.
GET 
  FILE='\\tsclient\depaul\CSC424\data_marsh_cleaned_hw2.sav'. 

DESCRIPTIVES
    variables=MEHGSWB TURB DOCSWD SRPRSWFB THGFSFC
    THGSDFC TCSDFB TPRSDFB
    /STATISTICS=mean STDDEVmin max

FREQUENCIES
    VARIABLES=TURB

CORRELATIONS
    / variables=MEHGSWB TURB DOCSWD SRPRSWFB THGFSFC THGSDFC TCSDFB TPRSDFB

MANOVA  THGSDFC TCSDFB TPRSDFB with MEHGSWB TURB DOCSWD SRPRSWFB THGFSFC 
    / DISCRIM all alpha(1)
    / print=sig(eigen dim) .