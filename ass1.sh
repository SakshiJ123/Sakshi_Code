

isparttime=1
isfulltime=2

totalsalry=0
emprateperhr=20
numofwrkingdays=20

for (( day=1; day<=$numofwrkingdays; day++ ))
do
    empcheck=$(( RANDOM%3 ))
    case  $empcheck in
        $isparttime) emphrs=4;;
        $isfulltime) emphrs=8;;
        *) emphrs=0;;
    esac

    salary=$(( $emprateperhr * $emphrs ))
    echo "salary : $salary"
    totalsalry=$((  $salary + $totalsalry ))
done
echo $totalsalry
