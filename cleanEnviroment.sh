SN1_DATA_HOME=/tmp/data/sn1
SN2_DATA_HOME=/tmp/data/sn2
SN3_DATA_HOME=/tmp/data/sn3
echo $SN1_DATA_HOME

rm -R /tmp/data/

mkdir -p $SN1_DATA_HOME/kvroot/
mkdir -p $SN1_DATA_HOME/u01/
mkdir -p $SN1_DATA_HOME/u02/
mkdir -p $SN1_DATA_HOME/u03/

mkdir -p $SN2_DATA_HOME/kvroot/
mkdir -p $SN2_DATA_HOME/u01/
mkdir -p $SN2_DATA_HOME/u02/
mkdir -p $SN2_DATA_HOME/u03/

mkdir -p $SN3_DATA_HOME/kvroot/
mkdir -p $SN3_DATA_HOME/u01/
mkdir -p $SN3_DATA_HOME/u02/
mkdir -p $SN3_DATA_HOME/u03/
