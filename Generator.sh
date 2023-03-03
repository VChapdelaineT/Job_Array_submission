:'

### This is an  Example but illustrates the functionnality of export along others. 

This specific example specifically takes iterates over each chromosome, each 500 chunks and writes a submitable command in each 

'
Path1='{PATH1}'
Path2='{PATH2}'
lengths=(248957000 242194000 198296000 190215000 181539000 170806000 159346000 145139000 138395000 133798000 135087000 133276000 114365000 107044000 101992000 90339000 83258000 80374000 58618000 64445000 46710000 50819000)
output=''
for i in {1..22} X
do
start=1
if  test $i == 'X' ; then
end=156041000
else
end=${lengths[(($i-1))]}
fi
step=$(($end/500))
for j in {1..500}
do
starter=$((1+"$j"*"$step"-"$step"))
CHROM=chr"$i"
ender=$(("$j"*"$step"))
echo 'sbatch --cpus-per-task=1 --mem=10G --account={YOUR_ACCOUNT} --time=2:00:00 --output=R-%x.%j.CHR'"$i"'_'"$starter"'_'"$ender"'.out  --export=ALL,CHROM=chr'"$i"',ender='"$ender"',starter='"$starter"',PATH1='"$Path1"',PATH2='"$Path2"',output='"$output"'AF_chr'"$i"' BASE_SCRIPT.sh' >> cmds.txt
done
done

