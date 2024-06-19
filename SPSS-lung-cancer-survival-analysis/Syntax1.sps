* Encoding: UTF-8.
Kaplan meier - age

DATASET ACTIVATE DataSet1.
KM time_in_years BY sex
  /STATUS=status(2)
  /PRINT MEAN
  /PLOT SURVIVAL
  /TEST LOGRANK
  /COMPARE OVERALL POOLED.


Cox-regression - age
COXREG time_in_years
  /STATUS=status(2)
  /CONTRAST (sex)=Indicator(1)
  /METHOD=ENTER sex 
  /PLOT SURVIVAL
  /PRINT=CI(95)
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).
