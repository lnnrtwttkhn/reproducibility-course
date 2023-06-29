preview:
	quarto preview
	
IMAGES_URL=https://cloud.uni-hamburg.de/s/JXQ28pptnGPeYK4/download
IMAGES_ARCHIVE=version-control-book.zip
IMAGES_DIR=static/

# download and extract images:
download-images:
	wget $(IMAGES_URL) -O $(IMAGES_ARCHIVE)
	unzip -j -o $(IMAGES_ARCHIVE) -d $(IMAGES_DIR)
	rm -f $(IMAGES_ARCHIVE)

# clean downloaded images folder:
clean:
	rm -rf $(IMAGES_DIR)*