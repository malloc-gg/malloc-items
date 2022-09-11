.PHONY: all

all: malloc-items-1.0.zip malloc-items-1.0.zip.sha1

malloc-items-1.0.zip: pack.mcmeta
	zip -r malloc-items-1.0.zip pack.mcmeta assets

malloc-items-1.0.zip.sha1: malloc-items-1.0.zip
	sha1sum $< > $@

clean:
	rm -f malloc-items-1.0.zip malloc-items-1.0.zip.sha1
