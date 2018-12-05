#exit 1
for f in *.zip
	do
		b=${f%.zip}
		# Remove old backup
		rm -rf ${b}_prev # Directory doesn't have to be present
		# Backup current installation
		if [ -d $b ]; then
			mv $b ${b}_prev
		fi
		# Install new
		unzip $f
	done
