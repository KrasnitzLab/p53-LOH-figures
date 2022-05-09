
Run following command:

```
docker run -it \
    -v <path to working directory>:/wd \
    krasnitzlab/p53-loh-nature-figures:1.0.0
```

where you should replace `<path to working directory>` with the
absolute path to your working directory.

This command will create a subdirectory `work` inside your working
directory. All results from
data processing will be saved there.

