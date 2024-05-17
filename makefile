.PHONY:com vcs verdi cov clean
.ONESHELL: run
#include $(PWD)/.env
$(info,"here start makefile ")
$(warning,"Warning: here start makefile ")
$(error,"Error: here start makefile ")
ifdef tc 
	TC_NAME:=$(tc)
else
	TC_NAME:=tc1_empty
endif
$(info,$(TC_NAME))

#if
#-------------------------------------------------------------------------------------------------------
com  : clean vcs
#-------------------------------------------------------------------------------------------------------
OUTPUT = cov_rpt

show:
	echo $(TC_NAME) 

cmp2:
	echo "------------make cmp uvm for verdi ------------------------------------"
	vcs -full64 -sverilog \
	             -timescale=1ns/1ps -kdb -lca\
				 -debug_access+all \
				 +define+UVM_VERDI_COMPWAVE \
				 -P  ${LD_LIBRARY_PATH}/novas.tab  ${LD_LIBRARY_PATH}/pli.a  \
	${UVM_HOME}/src/dpi/uvm_dpi.cc -CFLAGS -DVCS -timescale=1ns/1ps -f ../filelist/fl.f | tee cmp.log 

run2: cmp2
	echo "------------make run2 with verdi UVM debug  ------------------------------------"
	./simv  \
	-gui=verdi \
	+UVM_TESTNAME=${TC_NAME} \
	+UVM_VERDI_TRACE="UVM_AWARE+RAL+HIER+CAMPWAVE" \
	+UVM_TR_RECORD \
	-l run2.log 

check_dir:
	./check_dir_exist $(TC_NAME)  

run_easy: check_dir 
	echo $(TC_NAME)
	cd $(TC_NAME)
	\cp -rf ../../testcase/$(TC_NAME)/tc_task.v . 
	vcs  \
              -f ../../filelist/fl.f -top tb \
              -timescale=1ns/1ps -kdb \
              -debug_acc+dmptf -debug_region+cell+encrypt  -full64  -R  +vc  +v2k  -sverilog \
			  +fsdb+mda+all \
			  -cm line+cond+fsm+tgl	-cm_dir ${OUTPUT} \
			  -P ${LD_LIBRARY_PATH}/novas.tab  ${LD_LIBRARY_PATH}/pli.a  \
			  |  tee  vcs.log  &


run: 
	vcs  \
              -f tmp.f  \
              -timescale=1ns/1ns -kdb \
              -full64  -R  +vc  +v2k  -sverilog \
			  -P ${LD_LIBRARY_PATH}/novas.tab  ${LD_LIBRARY_PATH}/pli.a  \
			  |  tee  vcs.log  &


#-------------------------------------------------------------------------------------------------------
verdi  :
	verdi -f tmp.f & 
	#verdi -f file_list -ssf tb.fsdb &
#-------------------------------------------------------------------------------------------------------

#show the coverage
cov:
	dve -full64 -covdir *.vdb &
#-------------------------------------------------------------------------------------------------------

clean  :
	 rm  -rf  *~  core  csrc  simv*  vc_hdrs.h  ucli.key  urg* *.log  novas.* *.fsdb* verdiLog  64* DVEfiles *.vpd *vdb
#-------------------------------------------------------------------------------------------------------

