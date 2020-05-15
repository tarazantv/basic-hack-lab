views=1

firefox https://www.youtube.com/watch?v=W4JbPElsfl8&t=14s

until [ $views -gt 10 ]

do

xdotool --window key ctrl+r

sleep 5s

((views++))

done

echo All done