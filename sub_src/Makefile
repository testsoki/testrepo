FCOMP        = gfortran
TARGET       = main.exe

DIR_HERE     = .
DIR_MAIN_SRC = $(DIR_HERE)/main_src
DIR_SUB_SRC  = $(DIR_HERE)/sub_src
DIR_MOD      = $(DIR_HERE)/mod
DIR_COMP     = $(DIR_HERE)/comp


SRC_MAIN     = main.f90 
SRC_SUB      = sum_mod.f90 \
	       factorial_mod.f90


OBJ_MAIN     = $(patsubst %.f90,$(DIR_COMP)/%.o,$(SRC_MAIN))
OBJ_SUB      = $(patsubst %.f90,$(DIR_COMP)/%.o,$(SRC_SUB))
OBJ          = $(OBJ_SUB) \
	       $(OBJ_MAIN)


FLAGS        = -J$(DIR_MOD)
LFLAGS       =


$(TARGET) : $(OBJ)
	$(FCOMP) $(FLAGS) -o $@ $(OBJ) $(LFLAGS)
$(OBJ_MAIN) : $(DIR_COMP)/%.o : $(DIR_MAIN_SRC)/%.f90
	$(FCOMP) $(FLAGS) -o $@ -c $<
$(OBJ_SUB) : $(DIR_COMP)/%.o : $(DIR_SUB_SRC)/%.f90
	$(FCOMP) $(FLAGS) -o $@ -c $<

clean:
	$(RM) $(TARGET) $(OBJ) $(DIR_MOD)/*.mod
