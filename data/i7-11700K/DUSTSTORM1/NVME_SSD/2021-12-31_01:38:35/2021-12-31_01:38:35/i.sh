rm *AUTOTEST[0123456789].sa.svg
rm *AUTOTEST[12345][0123456789].sa.svg
rm *AUTOTEST[0123456789].sa.csv
rm *AUTOTEST[12345][0123456789].sa.csv

for i in `ls -1 sa|sed 's/[.]sa.data$//'`
do
sadf -d -T sa/${i}.sa.data -- -m CPU > ${i}.m.sa.csv
sadf -d -T sa/${i}.sa.data -- -d > ${i}.d.sa.csv
sadf -d -T sa/${i}.sa.data -- -u > ${i}.u.sa.csv
sadf -d -T sa/${i}.sa.data -- -S > ${i}.S.sa.csv
sadf -d -T sa/${i}.sa.data -- -q > ${i}.q.sa.csv
sadf -d -T sa/${i}.sa.data -- -r > ${i}.r.sa.csv
sadf -d -T sa/${i}.sa.data -- -b > ${i}.b.sa.csv
sadf -d -T sa/${i}.sa.data -- -n DEV > ${i}.n.sa.csv
sadf -g -T -O autoscale,showinfo,showidle,showtoc,skipempty sa/${i}.sa.data -- -m CPU -d -u -S -q -r -b -n DEV > ${i}.sa.svg
sadf -d -T sa/${i}.sa.data --fs=/dev/mapper/vg_raid-raid0 -- -F > ${i}.F.sa.csv
sadf -g -T -O autoscale,showinfo,showidle,skipempty sa/${i}.sa.data --fs=/dev/mapper/vg_raid-raid0 -- -F > ${i}.F.sa.svg
done
