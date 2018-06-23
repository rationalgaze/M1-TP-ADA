clean: 
	find ./ -type f  ! -name "*.?*" -not -name "Makefile" -not -path "./.git/**" -delete
	rm ./**/*.ali ./**/**/*.ali ./**/b~*.ads ./**/**/b~*.ads ./**/*.o ./**/**/*.o ./**/b~*.adb ./**/**/b~*.adb