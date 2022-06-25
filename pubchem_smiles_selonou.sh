#!/bin/bash
#====================================================================================================================================
#
#          FILE: pubchem_smiles_selonou.sh
# 
# REQUIREMENTS: create a csv file (input_cid_pubchem.csv) with your cid numbers of compunds you want to upload. Put this csv file in the same directory/folder as pubchem_smiles_selonou.sh. You must install first of all obabel on your computer(http://openbabel.org/wiki/Main_Page). For more informations, go to webnsite (https://pubchemdocs.ncbi.nlm.nih.gov/downloads)of pubchem
# AUTHOR: KANKİNOU SELONOU GAUTİER 
# CREATED: 25-04-2022 
#====================================================================================================================================


for id in $(cat input_cid_pubchem.csv);
do wget -O ${id}.sdf https://pubchem.ncbi.nlm.nih.gov/rest/pug/compound/cid/${id}/SDF
        obabel ${id}.sdf -O ${id}.mol -O ${id}.smi 
         cat ${id}.smi >> output_puchem_smiles.csv
         rm ${id}.sdf
         rm ${id}.smi;
done
