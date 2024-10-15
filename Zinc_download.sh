for id in $(cat zinc-2d.csv);
do wget -O ${id}.sdf http://zinc15.docking.org/substances/${id}.sdf
#        obabel ${id}.sdf -O ${id}.mol  
#       rm ${id}.sdf;
done
