

SN1_DATA_HOME=/tmp/data/sn1
SN2_DATA_HOME=/tmp/data/sn2
SN3_DATA_HOME=/tmp/data/sn3
echo $SN1_DATA_HOME


java -jar $KVHOME/lib/kvstore.jar makebootconfig \
  -root $SN1_DATA_HOME/kvroot \
  -store-security none \
  -capacity 3 \
  -harange 5010,5030 \
  -port 5000 \
  -memory_mb 1024 \
  -host kvhost01 \
  -storagedir $SN1_DATA_HOME/u01 \
  -storagedir $SN1_DATA_HOME/u02 \
  -storagedir $SN1_DATA_HOME/u03

echo "Done bootstrapping storage node 1"

java -jar $KVHOME/lib/kvstore.jar makebootconfig \
  -root $SN2_DATA_HOME/kvroot \
  -store-security none \
  -capacity 3 \
  -harange 6010,6030 \
  -port 6000 \
  -memory_mb 1024 \
  -host kvhost02 \
  -storagedir $SN2_DATA_HOME/u01 \
  -storagedir $SN2_DATA_HOME/u02 \
  -storagedir $SN2_DATA_HOME/u03

echo "Done bootstrapping storage node 2"

java -jar $KVHOME/lib/kvstore.jar makebootconfig \
  -root $SN3_DATA_HOME/kvroot \
  -store-security none \
  -capacity 3 \
  -harange 7010,7030 \
  -port 7000 \
  -memory_mb 1024 \
  -host kvhost03 \
  -storagedir $SN3_DATA_HOME/u01 \
  -storagedir $SN3_DATA_HOME/u02 \
  -storagedir $SN3_DATA_HOME/u03

echo "Done bootstrapping storage node 3"
