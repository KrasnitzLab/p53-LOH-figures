
Run the following command:

```
docker run -it \
    -v '< path to working directory >':/wd \
    krasnitzlab/p53-loh-nature-figures:1.0.1
```

where you should replace **< path to working directory >** with the
absolute path to your working directory.

This command will create a subdirectory named **work** inside your working
directory. All results from data processing will be saved there.

If you prefer to explore the data and the scripts that produce the figures
you can start the docker container using the following command:

```
docker run -it --entrypoint "/bin/bash" \
    -v '< path to working directory >':/wd \
    krasnitzlab/p53-loh-nature-figures:1.0.1
```
