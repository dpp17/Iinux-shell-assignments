echo " # # # # # Unit_Conversion # # # # # "
printf "\n"
echo " ****** 1ft=12in, then 42in=? ****** "
inch_num=42
ft_num=`echo $inch_num | awk '{print $1/12}'`
echo $ft_num
printf "\n"

echo " ****** Rectangular Plot of 60 feet x 40 feet in meters ****** "
l=60
b=40
feet_area=$(($l*$b)) #area in feet_sq.
meter_area=`echo $feet_area | awk '{print $feet_area*0.09290304}'` #area in meter_sq.
#echo $feet_area "foot sq."
echo $meter_area "meter sq."
printf "\n"

echo " ****** Calculate area of above such 25 plots in acres ****** "
acre_area=`echo $meter_area | awk '{print 0.000247105*$1}'` #area in acres.
acre25_area=`echo $acre_area |awk '{print $1*25}'` #float_valued area in acres of 25 plots
echo "Area of 25 plots in acres :: " $acre25_area 
