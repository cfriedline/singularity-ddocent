## Create dDocent Container

clone: `git clone...`

create: `make ddocent`

upload: `make upload_ddocent`, then `scp` to your HPC

exec:
```
cd /path/to/files
singularity exec /path/to/ddocent.img dDocent

```
