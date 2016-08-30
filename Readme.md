## Create dDocent Container

clone: `git clone` to machine/[vm](https://github.com/cfriedline/vagrant-singularity) with [singularity](http://singularity.lbl.gov) installed. 

create: `make ddocent`

upload: `scp` to your HPC system

exec:
```
cd /path/to/files
singularity exec /path/to/ddocent.img dDocent

```
