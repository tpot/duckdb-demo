TSV=nat1900-2017.tsv

all: names.duckdb

$(TSV):
	curl https://perso.telecom-paristech.fr/eagan/class/igr204/data/$(TSV)> $@

names.duckdb: $(TSV)
	duckdb names.duckdb -init init.sql -no-stdin

clean:
	rm names.duckdb

realclean: clean
	rm -f $(TSV)
