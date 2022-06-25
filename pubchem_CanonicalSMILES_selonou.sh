#!/bin/bash
#====================================================================================================================================
#
#          FILE: pubchem_CanonicalSMILES_selonou.sh
# 
# REQUIREMENTS: create a csv file (input_cid_pubchem.csv) with your cid numbers of compunds you want to upload. Put this csv file in the same directory/folder as pubchem_CanonicalSMILES_selonou.sh. For more informations, go to webnsite (https://pubchemdocs.ncbi.nlm.nih.gov/downloads)of pubchem

# AUTHOR: KANKİNOU SELONOU GAUTİER 
# CREATED: 25-04-2022 
#====================================================================================================================================

counter=0
for id in $(cat input_cid_pubchem.csv); 
do wget -O ${id} https://pubchem.ncbi.nlm.nih.gov/rest/pug/compound/cid/${id}/property/CanonicalSMILES/CSV;
	sed -i '1d' ${id}
	cat ${id} >> output_pubchem_Cano_SMILES_selonou.csv
	rm ${id}
	let counter++
    if ! ((counter % 1)); then
        sleep 1
    fi
done


