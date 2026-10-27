#tác giả: Đặng Quang Hưng
#lớp: CNTT2

echo "Dang Loc Canh Bao"
echo "===================================" > ../backup/bao-cao-su-co.txt
echo "BAO CAO SU CO - SMARTFARM" >> ../backup/bao-cao-su-co.txt
echo $(date +"%d/%m/%Y %H:%M") >> ../backup/bao-cao-su-co.txt
echo "===================================" >> ../backup/bao-cao-su-co.txt
cat ../data/log-he-thong.log | grep "ERROR" >> ../backup/bao-cao-su-co.txt
cat ../data/log-he-thong.log | grep "CRITICAL" >> ../backup/bao-cao-su-co.txt
echo "-----------------------------------" >> ../backup/bao-cao-su-co.txt
echo "Hoan thanh"
echo "Tong so su co:" >> ../backup/bao-cao-su-co.txt
cat ../data/log-he-thong.log | grep -Ec "ERROR|CRITICAL" >> ../backup/bao-cao-su-co.txt









