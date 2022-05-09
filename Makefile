all:


build:
	docker build . -t krasnitzlab/p53-loh-nature-figures:latest
	docker build . -t krasnitzlab/p53-loh-nature-figures:1.0.0


publish:
	docker push krasnitzlab/p53-loh-nature-figures:1.0.0
	docker push krasnitzlab/p53-loh-nature-figures:latest
