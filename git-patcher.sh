	zip_name='version.zip';
	dir_name='tmp'; 


	files_differ=$(git diff --name-status $1 HEAD);

	 arrIN=(${files_differ// / });


	  rm -rf $dir_name;
	  mkdir -p $dir_name;

	  for file in "${arrIN[@]}"; do
          echo $file;
          if [ -e "$file" ]
          	then
          		cp --parents $file $dir_name
          fi;
      done

    cd $dir_name;
    zip -r  "./"$zip_name $"./";
