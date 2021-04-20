## Si se pasa como argumento d se desactiva (se comenta conda), si no se activa y se ejecuta blender.
if test $# -eq 0			
then 
	## Comenta las lineas 130 a 145.
	sed -i '130,145 s/#//' .bashrc
	source ~/.bashrc
	
	source ~/anaconda3/etc/profile.d/conda.sh
	cd $HOME/tmp/blender-2.79b-linux-glibc219-x86_64
	conda activate blender && echo "blender activado, encendiendose"  && ./blender
	
else
	if test $1 == "d"

	then
	# Descomenta las lineas 130 a 145.
		echo "He metido d"
		sed -i '130,145 s/^/#/' .bashrc
		source ~/.bashrc
	else 
		sed -i '130,145 s/#//' .bashrc
		source ~/.bashrc
		
		source ~/anaconda3/etc/profile.d/conda.sh
		cd $HOME/tmp/blender-2.79b-linux-glibc219-x86_64
		conda activate blender && echo "blender activado"  && ./blender

	fi
	
fi


