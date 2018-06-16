# XML2RFC=/Users/paul/Documents/xml2rfc-1.35/xml2rfc.tcl
XML2RFC=xml2rfc

DATE=`date +%s`

all: core 

core: 
	$(XML2RFC) draft-moriarty-tls-oldversions-diediedie.xml draft-moriarty-tls-oldversions-diediedie.txt

upload:
	scp draft-moriarty-tls-oldversions-diediedie.txt  down.dsg.cs.tcd.ie:/var/www/misc/draft-moriarty-tls-oldversions-diediedie.txt
	scp draft-moriarty-tls-oldversions-diediedie.xml  down.dsg.cs.tcd.ie:/var/www/misc/draft-moriarty-tls-oldversions-diediedie.xml

backuup:
	- mkdir backups
	cp draft-moriarty-tls-oldversions-diediedie.txt backups/draft-moriarty-tls-oldversions-diediedie-$(DATE).txt
	cp draft-moriarty-tls-oldversions-diediedie.xml backups/draft-moriarty-tls-oldversions-diediedie-$(DATE).xml

clean:
	rm -f   draft-moriarty-tls-oldversions-diediedie-00.txt *~

