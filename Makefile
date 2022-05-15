#--- $(SOC_ROOT)\makefile.mak

SOC_ROOT=./
KAUAI_ROOT=$(SOC_ROOT)/kauai
include=$(SOC_ROOT)/inc \
    $(SOC_ROOT)/bren/inc \
    $(KAUAI_ROOT)/src

include $(KAUAI_ROOT)/makefile.def

.SILENT:

ALL: all_bren all_src all_tools

all_bren:
	make -C bren/ all

all_src:
	make -C src/ all

all_tools:
	make -C tools/ all

clean: clean_rest clean_bren build_rest


clean_bren:
	make -C bren/ clean

clean_rest:
	rm -f $(SOC_ROOT)/obj/$(BLD_TYPE_DIR)/*.obj
	rm -f $(SOC_ROOT)/obj/$(BLD_TYPE_DIR)/*.pch
	rm -f $(SOC_ROOT)/obj/$(BLD_TYPE_DIR)/*.pdb
	rm -f $(SOC_ROOT)/obj/$(BLD_TYPE_DIR)/*.exe
	rm -f $(SOC_ROOT)/obj/$(BLD_TYPE_DIR)/*.res
	rm -f $(SOC_ROOT)/obj/$(BLD_TYPE_DIR)/*.chk
	rm -f $(SOC_ROOT)/obj/$(BLD_TYPE_DIR)/*.cht
	rm -f $(SOC_ROOT)/obj/$(BLD_TYPE_DIR)/*.cod
	rm -f $(SOC_ROOT)/obj/$(BLD_TYPE_DIR)/*.map
	rm -f $(SOC_ROOT)/obj/$(BLD_TYPE_DIR)/*.thd
	rm -f $(SOC_ROOT)/obj/$(BLD_TYPE_DIR)/*.lib
	rm -f $(SOC_ROOT)/obj/$(BLD_TYPE_DIR)/*.i  
	rm -f $(SOC_ROOT)/obj/$(BLD_TYPE_DIR)/*.lnk


build_rest:
	make -C src/ clean
	make -C tools/ clean
