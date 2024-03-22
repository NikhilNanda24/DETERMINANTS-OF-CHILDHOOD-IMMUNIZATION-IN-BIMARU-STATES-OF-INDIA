
use "C:\Users\Nikhi\Desktop\NHFS\NFHS 4\IAKR74FL (Children's Recode).DTA", clear

ssc install asdoc

// Restricting our study to children between ages 12 months and 23 months
drop if hw1 < 12 | hw1 > 23





// bcg date marked on card  
gen bcg_Doc = 1 if h2  == 1
replace bcg_Doc = 0 if h2  == 0 | h2  == 2 | h2 == 3 | h2 == 8

// bcg given as reported by mother 
gen bcg_rbm = 1 if h2  == 2
replace bcg_rbm = 0 if h2  == 0 | h2  == 1 | h2 == 3 | h2 == 8

// bcg marked on vaccination card 
gen bcg_Moc = 1 if h2  == 3
replace bcg_Moc = 0 if h2  == 0 | h2  == 1 | h2 == 2 | h2 == 8


//Did not receive dpt 1
gen dpt_1_no =  1 if h3 ==  0
replace dpt_1_no = 0 if h3  == 1 | h3 == 2 | h3 ==3 | h3==8

// dpt1 date marked on card  
gen dpt_1_Doc = 1 if h3  == 1
replace dpt_1_Doc = 0 if h3  == 0 | h3 == 2 | h3 ==3 | h3==8

// dpt1 given as reported by mother 
gen dpt_1_rbm = 1 if h3  == 2
replace dpt_1_rbm = 0 if h3  == 0 | h3 == 1 | h3 ==3 | h3==8


// dpt1 marked on vaccination card 
gen dpt_1_Moc = 1 if h3  == 3
replace dpt_1_Moc = 0 if h3  == 0 | h3 == 1 | h3 ==2 | h3==8


// dpt2 date marked on card  
gen dpt_2_Doc = 1 if h5  == 1
replace dpt_2_Doc = 0 if h5  == 0 | h5 == 2 | h5 == 3 | h5 == 8

// dpt2 given as reported by mother 
gen dpt_2_rbm = 1 if h5  == 2
replace dpt_2_rbm = 0 if h5  == 0 | h5 == 1 | h5 == 3 | h5 == 8

// dpt2 marked on vaccination card 
gen dpt_2_Moc = 1 if h5  == 3
replace dpt_2_Moc = 0 if h5  == 0 | h5 == 1 | h5 == 2 | h5 == 8


// dpt3 date marked on card  
gen dpt_3_Doc = 1 if h7  == 1
replace dpt_3_Doc = 0 if h7  == 0 | h7 == 2 | h == 3 | h7 == 8

// dpt3 given as reported by mother 
gen dpt_3_rbm = 1 if h7  == 2
replace dpt_3_rbm = 0 if h7  == 0 | h7 == 1 | h7 == 3 | h7 == 8

// dpt2 marked on vaccination card 
gen dpt_3_Moc = 1 if h7  == 3
replace dpt_3_Moc = 0 if h7  == 0 | h7 == 1 | h7 == 2 | h7 == 8


// Polio 1 date marked on card 
gen polio_1_Doc = 1 if h4  == 1
replace polio_1_Doc = 0 if h4  == 0 | h4 ==  0 | h4 == 2 | h4 == 8 

// Polio 1 given as reported by mother
gen polio_1_rbm = 1 if h4  == 2 
replace polio_1_rbm = 0 if h4  == 0| h4 ==  1 | h4 == 3 | h4 == 8 

// Polio 1 marked on card
gen polio_1_Moc = 1 if h4  == 3
replace polio_1_Moc = 0 if h4  == 0| h4 ==  1 | h4 == 2 | h4 == 8 


// Polio 2 date marked on card 
gen polio_2_Doc = 1 if h6  == 1
replace polio_2_Doc = 0 if h6  == 0 | h6 ==  0 | h6 == 2 | h6 == 8 

// Polio 2 given as reported by mother
gen polio_2_rbm = 1 if h6  == 2 
replace polio_2_rbm = 0 if h6  == 0| h6 ==  1 | h6 == 3 | h6 == 8 

// Polio 2 marked on card
gen polio_2_Moc = 1 if h8  == 3
replace polio_2_Moc = 0 if h8  == 0| h8 ==  1 | h8 == 2 | h8 == 8 

// Polio 3 date marked on card 
gen polio_3_Doc = 1 if h8  == 1
replace polio_3_Doc = 0 if h8  == 0 | h8 ==  0 | h8 == 2 | h8 == 8 

// Polio 3 given as reported by mother
gen polio_3_rbm = 1 if h8  == 2 
replace polio_3_rbm = 0 if h8  == 0| h8 ==  1 | h8 == 3 | h8 == 8 

// Polio 3 marked on card
gen polio_3_Moc = 1 if h8  == 3
replace polio_3_Moc = 0 if h8  == 0| h8 ==  1 | h8 == 2 | h8 == 8 



// Measles date marked on card  
gen measles_Doc = 1 if h9  == 1
replace measles_Doc = 0 if h9  == 0 | h9  == 2 | h9 == 3 | hh9 == 8

// Measles given as reported by mother 
gen measles_rbm = 1 if h2  == 2
replace measles_rbm = 0 if h9  == 0 | h9  == 1 | h9 == 3 | hh9 == 8

// Measles marked on vaccination card 
gen measles_Moc = 1 if h2  == 3
replace measles_Moc = 0 if h9  == 0 | h9  == 1 | h9 == 2 | hh9 == 8


// bcg given 
gen bcg_yes = bcg_Doc + bcg_rbm + bcg_Moc

//dpt 1 given 
gen  dpt_1_yes =  dpt_1_Doc +  dpt_1_rbm +  dpt_1_Moc

//dpt 2 given 
gen  dpt_2_yes =  dpt_2_Doc +  dpt_2_rbm +  dpt_2_Moc

//dpt 3 given 
gen  dpt_3_yes =  dpt_3_Doc +  dpt_3_rbm +  dpt_3_Moc

// Polio 1 given 
gen   polio_1_yes =   polio_1_Doc +   polio_1_rbm +   polio_1_Moc

// Polio 2 given 
gen   polio_2_yes =   polio_2_Doc +   polio_2_rbm +   polio_2_Moc

// Polio 3 given 
gen   polio_3_yes =   polio_3_Doc +   polio_3_rbm +   polio_3_Moc

// Measles given 
gen measles_yes = measles_Doc + measles_rbm + measles_Moc

// Total 
egen total = rowtotal(bcg_yes dpt_1_yes dpt_2_yes dpt_3_yes polio_1_yes polio_2_yes  polio_3_yes measles_yes )

// Generating Immunisation status variable 
gen Immunisation_Status = "Full Immunisation" if total == 8
replace Immunisation_Status = "Partial Immunisation" if total < 8 & total >= 1 
replace Immunisation_Status = "No Immunisation" if total == 0
drop if missing(Immunisation_Status)
encode Immunisation_Status, generate( Immunisation_Status_n)

// Reads Newspaper atleast once a week
gen N_2 = 1 if v157 == 2
replace N_2 = 0 if v157 == 0 | v157 == 1 | v157 == 3

//Reads Newspaper almost everyday 
gen N_3 = 1 if v157 == 3
replace N_3 = 0 if v157 == 0 | v157 == 1 | v157 == 2

// Listens to Radio atleast once a week
gen R_2 = 1 if v158 == 2
replace R_2 = 0 if v158 == 0 | v158 == 1 | v158 == 3 

//Listens to Radio almost everyday
gen R_3 = 1 if v158 == 3
replace R_3 = 0 if v158 == 0 | v158 == 1 | v158 == 2

// Watches TV atleast once a week
gen T_2 = 1 if v159 == 2
replace T_2 = 0 if v159 == 0 | v159 == 1 | v159 == 3 

// Watches TV almost everyday 
gen T_3 = 1 if v159 == 3
replace T_3 = 0 if v159 == 0 | v159 == 1 | v159 == 2

// Totalling these
egen total_1 = rowtotal(N_2 N_3 R_2 R_3 T_2 T_3 )

// Generating Media Exposure variable 
gen Media_Exposure_n = "Yes" if total_1 >= 1
replace Media_Exposure_n = "No" if total_1 == 0
encode Media_Exposure_n , gen(Media_Exposure)

// Heard about family planning in Newspaper
gen FPN_1 = 1 if v384c == 1
replace FPN_1 = 0 if v384c == 0

//Heard about family planning on Radio
gen FPR = 1 if v384a == 1
replace FPR = 0 if v384a == 0

// Heard about family planning on TV
gen FPT = 1 if v384b == 1
replace FPT = 0 if v384b == 0

// Totaling
egen total_2 = rowtotal(FPN_1 FPR FPT)

//Genearting mother's awareness variables
gen Mothers_Awareness_n = "Yes" if total_2 >= 1
replace Mothers_Awareness_n = "No" if total_2 == 0
encode Mothers_Awareness_n , gen(Mothers_Awareness)



// Renaming Variables 
rename v024 State
rename v106 Highest_Education_Level
rename v190 Wealth_Index
rename v025 Place_of_Residence
rename v130 Religion
rename b4 Sex_of_Child
rename bord Birth_Order
rename v119 Electricity_Availability
rename s116 ST_SC_OBC_General
rename v013 Age




//Changing labels of Religion
label define Religion 1 "Hindu" 2 "Muslim" 3 "Christian" 4 "Others"
recode Religion (1=1) (2=2) (3=3) (4=4) (5=4) (6=4) (7=4) (8=4) (9=4) (96=4)
label values Religion Religion

// Changing labels of Age 
label define Age 1 "15-19" 2 "20-24" 3 "25-29" 4 "30+"
recode Age (1=1) (2=2) (3=3) (4=4) (5=4) (6=4) (7=4)
label values Age Age

// Changing labels of Wealth Index
label define Wealth_Index 1 "Low" 2 "Middle" 3 "High"
recode Wealth_Index (1=1) (2=1) (3=2) (4=3) (5=3)
label values Wealth_Index Wealth_Index

//Changing labels of ST/SC/OBC/General 
label define Caste_Tribe 1 "Schedule caste" 2 "Schedule tribe" 3 "OBC" 4 "General"
recode ST_SC_OBC_General (1=1) (2=2) (3=3) (4=4) (8=4)
label values ST_SC_OBC_General Caste_Tribe


// Changing labels of Birth Order
label define Birth_order 1 "1" 2 "2" 3 "3" 4 "4+"
recode Birth_Order (1=1) (2=2) (3=3) (4=4) (5=4) (6=4) (7=4) (8=4) (9=4) (10=4) (11=4) (12=4) (13=4)
label values Birth_Order Birth_Order


// Finding Means of Variables at India Level 
// Table 1 - Mean Values
tab Immunisation_Status_n
tab Sex_of_Child 
tab Birth_Order
tab Place_of_Residence
tab Highest_Education_Level
tab Age
tab Mothers_Awareness
tab Religion 
tab ST_SC_OBC_General
tab Wealth_Index
tab Electricity_Availability
tab Media_Exposure


//Finding Means of Variable with respect to place of residence 
// Table 1 - - Mean Values 
tab Immunisation_Status_n Place_of_Residence, column
tab Sex_of_Child Place_of_Residence, column
tab Birth_Order Place_of_Residence, column
tab Highest_Education_Level Place_of_Residence, column
tab Age Place_of_Residence, column
tab Mothers_Awareness Place_of_Residence, column
tab Religion Place_of_Residence, column
tab ST_SC_OBC_General Place_of_Residence, column
tab Wealth_Index Place_of_Residence, column
tab Electricity_Availability Place_of_Residence, column
tab Media_Exposure Place_of_Residence, column

// Restricting our study to States of Bihar , Madhya Pradesh, Rajasthan , Uttar Pradesh
drop if inlist(v024,1,2,3,4,6,7,8,9,10,11,12,13,14,15,16,17,18,20,21,22,23,24,25,26,27,28,30,31,32,34,35,36)


// Finding Means of variables at State's level 
// Table 1 - Mean Values
tab Immunisation_Status_n State, column
tab Sex_of_Child State, column
tab Birth_Order State, column
tab Highest_Education_Level State, column
tab Age State, column
tab Mothers_Awareness State, column
tab Religion State, column
tab ST_SC_OBC_General State, column
tab Wealth_Index State, column
tab Electricity_Availability State, column
tab Media_Exposure State, column


// Creating a Variable correlation Matrix 
// Appendix 1 : Pairwise correlation matrix
asdoc pwcorr State Place_of_Residence Age Highest_Education_Level  Electricity_Availability Religion Wealth_Index Birth_Order Sex_of_Child ST_SC_OBC_General Media_Exposure Mothers_Awareness


//Child Level Characteristics Macro
global CLC c.Birth_Order i.Sex_of_Child 

// Mother Level Characteristics Macro
global MLC i.Place_of_Residence i.Age i.Highest_Education_Level i.Mothers_Awareness

// Demographic Level Characteristics Macro
global DLC i.Religion i.ST_SC_OBC_General

// Other Level Characteristics Macro
global OC i.Wealth_Index i.Media_Exposure i.Electricity_Availability


//Table 3 - Regression results on immunisation coverage
// Running an Multinomoal Logistic Regression 
mlogit Immunisation_Status_n `CLC' `MLC' `DLC' `OC' , baseoutcome(2)
  
//Sending margins to a wordfile  
asdoc margins , dydx(*)

 
// Plotting margins plot
margins , dydx(*)
marginsplot

// Running an Ordered Logistic Regression 
ologit Immunisation_Status_n `CLC' `MLC' `DLC' `OC'

//Sending margins to a wordfile  
asdoc margins , dydx(*)

 
// Plotting margins plot
margins , dydx(*)
marginsplot

// Generating Binary Immunisation variable for Logit
gen ImmunisationStatus_Binary = "Full Immunisation" if total == 8
replace ImmunisationStatus_Binary = "Partial Immunisation" if total < 8
encode ImmunisationStatus_Binary, gen(ImmunisationStatus_Binary_n)
recode ImmunisationStatus_Binary_n (1=0) (2=1)

// Running Logistic Regression 
logit ImmunisationStatus_Binary_n i.State `CLC' `MLC' `DLC' `OC'

//Sending margins to a wordfile  
asdoc margins , dydx(*)

 
// Plotting margins plot
margins , dydx(*)
marginsplot





