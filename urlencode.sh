#!/bin/bash

{
    echo -n ${1} |
    od -tx1 |
    tr "\n\r" " "|
    sed -e "s/[0-9]\{3,\} //g"|
    sed -e "s/[ ]\{2,\}/ /g"|
    sed -e "s/ /%/g"|
    sed -e "s/%$//g"
}
