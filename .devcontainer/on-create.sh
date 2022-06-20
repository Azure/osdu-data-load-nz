#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PARENT_DIR=`dirname $SCRIPT_DIR`

cd $PARENT_DIR
mkdir -p $PARENT_DIR/nz-data

wget https://oaklabexperience.blob.core.windows.net/nz-data/taranaki-basin.gz
tar -xzf taranaki-basin.gz -C $PARENT_DIR/nz-data
rm $PARENT_DIR/nz-data

WELL_LIST=( "Arakamu-1A"
            "Arakamu-2"
            "Cardiff-3"
            "Cardiff-3 ST1"
            "Cheal-A10"
            "Cheal-A11"
            "Cheal-A12"
            "Cheal-B8"
            "Cheal-C3"
            "Cheal-C4"
            "Cheal-E1"
            "Cheal-E2"
            "Cheal-E3"
            "Cheal-E4"
            "Cheal-E5"
            "Cheal-G1"
            "Cheal-G2"
            "Cheal-G3" )

for WELL in "${WELL_LIST[@]}"
do
    if [ ! -d "$PARENT_DIR/nz-data/$WELL" ]
    then
        wget https://oaklabexperience.blob.core.windows.net/nz-data/$WELL.zip
        unzip $WELL.zip -d $PARENT_DIR/nz-data
        rm $PARENT_DIR/$WELL.zip
    fi
done


