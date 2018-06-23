setenv GNATPATH /home/commun_depinfo/enseignants/singhoff/GNATGPL2007/

setenv PATH $GNATPATH/bin:$PATH


if ($?LD_LIBRARY_PATH) then
	setenv LD_LIBRARY_PATH $GNATPATH/lib:$LD_LIBRARY_PATH
else
	setenv LD_LIBRARY_PATH $GNATPATH/lib
endif

