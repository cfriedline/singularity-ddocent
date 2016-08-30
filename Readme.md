## Create dDocent Container

clone: `git clone https://github.com/cfriedline/singularity-ddocent.git` to machine/[VM](https://github.com/cfriedline/vagrant-singularity) with [singularity](http://singularity.lbl.gov) installed.

create: `cd singularity-ddocent` and `make ddocent`

upload: `scp ddocent.img` to your HPC system

exec:
```
cd /path/to/files
singularity exec /path/to/ddocent.img dDocent

```
