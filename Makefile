S=/usr/local/bin/singularity
I=ddocent.img
W=sudo $(S) exec -w $(I)
WD=sudo $(S) -d exec -w $(I)
E=$(S) exec $(I)
C=sudo $(S) copy $(I)
B=sudo $(S) bootstrap $(I)

ddocent: bootstrap_ddocent install_ddocent

create_ddocent:
	test -f $I || sudo $S create -s 2048 $I

bootstrap_ddocent: create_ddocent
	$B ddocent.def

env_ddocent:
	$C -f environment_ddocent /environment

copy_install_script_ddocent:
	$C -f install_ddocent.sh /

install_ddocent: env_ddocent copy_install_script_ddocent
	$(W) /bin/bash /install_ddocent.sh

shell:
	$S shell $I

upload_ddocent:
	cp $I /media/host
