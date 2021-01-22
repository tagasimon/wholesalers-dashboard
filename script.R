
processed_df %>% View()
processed_df %>% glimpse()

processed_df %>% 
  add_count(ID) %>% 
  filter(!duplicated(ID)) %>% 
  filter(!is.na(identification)) %>%
  # filter(!is.na(Trained)) %>% 
  mutate(Trained = ifelse(is.na(Trained), "No", Trained)) %>% 
  ggplot(aes(requests)) + 
  geom_bar() +
  facet_grid(.~gender) +
  geom_text(stat='count', aes(label=..count..), vjust=-1)
  # ggtitle("What Type of Business do Registered People Have?")
  # coord_polar()
  # theme(legend.position="none")


#  [1] "start"                                                
#  [2] "end"                                                  
#  [3] "group_ev6dr15/rec_date"     #Date                            
#  [4] "group_ev6dr15/data_collector"                         
#  [5] "group_ev6dr15/trader_id"                              
#  [6] "group_ev6dr15/r_name"   # "First name"                                
#  [7] "group_ev6dr15/surname"  # Surname                              
#  [8] "Trained"     #Trained                                     
#  [9] "Signed contract"  # Signed contract                                    
#  [10] "group_ev6dr15/Adress_details" # Address details                       
#  [11] "group_ev6dr15/location_district"   # District                   
#  [12] "group_ev6dr15/location_subcounty"  # Sub county                    
#  [13] "group_ev6dr15/location" # Location                              
#  [14] "group_ev6dr15/Village"  # Village                              
#  [15] "group_ev6dr15/dob" # Date of birth                                    
#  [16] "group_ev6dr15/year" # Year                                  
#  [17] "group_ev6dr15/assign_id"  # Assign ID                            
#  [18] "group_ev6dr15/client_id"                              
#  [19] "group_ev6dr15/id"   # Identification                                   
#  [20] "group_ev6dr15/id_image"                               
#  [21] "group_ev6dr15/sex"     # Gender                               
#  [22] "group_ev6dr15/Marital_status"    # Maritus status                     
#  [23] "group_ev6dr15/tel"       # Telephone                             
#  [24] "group_ev6dr15/kin"     # Next Kin                                
#  [25] "group_ev6dr15/kin_address" # Next of Kin address                           
#  [26] "group_ev6dr15/kin_tel"    # Next of Kin Tel                            
#  [27] "group_ev6dr15/kin_id"      # Next of Kin ID                           
#  [28] "group_ev6dr15/disablt"                                
#  [29] "group_ev6dr15/disablt/1"                              
#  [30] "group_ev6dr15/disablt/2"                              
#  [31] "group_ev6dr15/disablt/3"                              
#  [32] "group_ev6dr15/disablt/4"                              
#  [33] "group_ev6dr15/disablt/5"                              
#  [34] "group_sc15r33/business"   # Business                         
#  [35] "group_sc15r33/type_business"  # Type of Business                        
#  [36] "group_sc15r33/where"     # Business Location                             
#  [37] "group_sc15r33/premise"  # Status of Premises                              
#  [38] "group_sc15r33/period_opn" # How long in Biz                            
#  [39] "group_sc15r33/num_staff"   # Staff Employed                           
#  [40] "group_sc15r33/customers"   # Customers served                           
#  [41] "group_sc15r33/freq_purchases"  # Frequency of Purchase                       
#  [42] "group_sc15r33/suppliers"   # Suppliers                           
#  [43] "group_sc15r33/exprn"       # Do you have biz experience                           
#  [44] "group_sc15r33/If_yes_tick_appropriately"  # For how long            
#  [45] "group_sc15r33/If_yes_tick_appropriately/1"            
#  [46] "group_sc15r33/If_yes_tick_appropriately/2"            
#  [47] "group_sc15r33/If_yes_tick_appropriately/3"            
#  [48] "group_sc15r33/saving"      # Are you in a Savings Group                           
#  [49] "group_sc15r33/saving_scheme" # Type of saving scheme                       
#  [50] "group_sc15r33/saving_scheme/saving_group"             
#  [51] "group_sc15r33/saving_scheme/micro_finance_institution"
#  [52] "group_sc15r33/saving_scheme/sacco"                    
#  [53] "group_sc15r33/saving_scheme/bank"                     
#  [54] "group_sc15r33/loan"   # Ever taken a Loan                                 
#  [55] "group_sc15r33/loan_src" # Where Loan was Taken from                              
#  [56] "group_sc15r33/loan_src/saving_group",                  
#  [57] "group_sc15r33/loan_src/sacco",                         
#  [58] "group_sc15r33/loan_src/microfinance_institution",      
#  [59] "group_sc15r33/loan_src/bank",                          
#  [60] "group_sc15r33/loan_src/friends_and_family",            
#  [61] "group_sc15r33/loan_amt"  # Loan Amount                             
#  [62] "group_sc15r33/serv_loan"  # How Long                            
#  [63] "group_sc15r33/ern/gross_profit" # Gross Profit                      
#  [64] "group_sc15r33/ern/net_profit"   # Net Profit                      
#  [65] "group_sc15r33/records" ??                               
#  [66] "group_sc15r33/records/1"                              
#  [67] "group_sc15r33/records/2"                              
#  [68] "group_sc15r33/records/3"                              
#  [69] "group_sc15r33/records/4"                              
#  [70] "group_sc15r33/records/5"                              
#  [71] "group_sc15r33/records/6"                              
#  [72] "group_sc15r33/need"     # Requests                            
#  [73] "group_sc15r33/train_business"                          
#  [74] "group_sc15r33/train_business/1"                       
#  [75] "group_sc15r33/train_business/2"                       
#  [76] "group_sc15r33/train_business/3"                       
#  [77] "group_sc15r33/train_business/4"                       
#  [78] "group_sc15r33/train_business/5"                       
#  [79] "group_sc15r33/training"  #Ever gone through training                             
#  [80] "group_sc15r33/products/nhop1",  # NHOP products you know                       
#  [81] "group_sc15r33/products/nhop2",                         
#  [82] "group_sc15r33/products/nhop3",                         
#  [83] "group_sc15r33/goals/goal1",    # Goal                        
#  [84] "group_sc15r33/goals/goal2",                            
#  [85] "group_sc15r33/goals/goal3",                            
#  [86] "group_sc15r33/motivation/mot1",  # Motivation                      
#  [87] "group_sc15r33/motivation/mot2",                        
#  [88] "group_sc15r33/motivation/mot3",                        
#  [89] "group_sc15r33/activation" , # activation                            
#  [90] "group_sc15r33/why/reason1",   # Why                         
#  [91] "group_sc15r33/why/reason2",                            
#  [92] "group_sc15r33/why/reason3",                            
#  [93] "group_sc15r33/will_train",   # Are you willing to train                           
#  [94] "group_sc15r33/photo1"                                 
#  [95] "GPS"           # GPS                                       
#  [96] "_GPS_latitude"   # _GPS_latitude                                     
#  [97] "_GPS_longitude"    # _GPS_longitude                                    
#  [98] "_GPS_altitude"      # _GPS_altitude                                  
#  [99] "_GPS_precision"       # _GPS_precision                                
#  [100] "meta/instanceID"                                      
#  [101] "_id"                                                  
#  [102] "_uuid"                                                
#  [103] "_submission_time"                                     
#  [104] "_index"                                               
#  [105] "_parent_table_name"                                   
#  [106] "_parent_index"                                        
#  [107] "_tags"                                                
#  [108] "_notes"                                               
#  [109] "_version"                                             
#  [110] "_duration"                                            
#  [111] "_submitted_by"                                        
#  [112] "_xform_id"                           