all:


build:
	docker build . -t krasnitzlab/p53-loh-figures:latest
	docker build . -t krasnitzlab/p53-loh-figures:1.0.2


publish:
	docker push krasnitzlab/p53-loh-figures:1.0.2
	docker push krasnitzlab/p53-loh-figures:latest
