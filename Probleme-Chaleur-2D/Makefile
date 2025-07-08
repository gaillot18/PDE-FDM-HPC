CC = clang
CCP = mpicc

CPPFLAGS = -I/opt/homebrew/opt/llvm/include -I/opt/homebrew/opt/suite-sparse/include/suitesparse
LDFLAGS = -L/opt/homebrew/opt/llvm/lib -L/opt/homebrew/opt/suite-sparse/lib 
LDLIBS = -lcholmod

BIN = ./Binaires
LIB = ./Librairies
OBJ = ./Objets
SRC = ./Sources
TXT = ./Textes

FCC = Fonctions-communes

FLAGS = -g0 -Wall -O3
MPI_FLAGS = -DUSE_MPI
OMP_FLAGS = -fopenmp
ifneq ($(EXACTE),0)
  FLAGS += -DEXACTE
endif
ifneq ($(ECRITURE),0)
  FLAGS += -DECRITURE
endif
ifneq ($(ARRET),0)
  FLAGS += -DARRET
endif

.SUFFIXES: .o .c



# ======================================================
# Création de l'exécutable 1
# ======================================================
$(BIN)/1: $(OBJ)/1/affichage.o $(OBJ)/1/calcul-mat.o $(OBJ)/1/convert.o $(OBJ)/1/resolution.o $(OBJ)/1/main.o
	$(CC) $(FLAGS) $^ -o $@

$(OBJ)/1/main.o: $(SRC)/1/main.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/1/resolution.o: $(SRC)/1/resolution.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/1/affichage.o: ../$(FCC)/affichage.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/1/calcul-mat.o: ../$(FCC)/calcul-mat.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/1/convert.o: ../$(FCC)/convert.c
	$(CC) $(FLAGS) -c $< -o $@



# ======================================================
# Création de l'exécutable 2
# ======================================================
$(BIN)/2: $(OBJ)/2/affichage.o $(OBJ)/2/calcul-mat.o $(OBJ)/2/convert.o $(OBJ)/2/resolution.o $(OBJ)/2/main.o
	$(CC) $(OMP_FLAGS) $(FLAGS) $^ -o $@

$(OBJ)/2/main.o: $(SRC)/2/main.c
	$(CC) $(OMP_FLAGS) $(FLAGS) -c $< -o $@

$(OBJ)/2/resolution.o: $(SRC)/2/resolution.c
	$(CC) $(OMP_FLAGS) $(FLAGS) -c $< -o $@

$(OBJ)/2/affichage.o: ../$(FCC)/affichage.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/2/calcul-mat.o: ../$(FCC)/calcul-mat.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/2/convert.o: ../$(FCC)/convert.c
	$(CC) $(FLAGS) -c $< -o $@



# ======================================================
# Création de l'exécutable 3
# ======================================================
$(BIN)/3: $(OBJ)/3/affichage.o $(OBJ)/3/calcul-mat.o $(OBJ)/3/convert.o $(OBJ)/3/resolution.o $(OBJ)/3/parallele.o $(OBJ)/3/main.o
	$(CCP) $(MPI_FLAGS) $(FLAGS) $^ -o $@

$(OBJ)/3/main.o: $(SRC)/3/main.c
	$(CCP) $(MPI_FLAGS) $(FLAGS) -c $< -o $@

$(OBJ)/3/parallele.o: $(SRC)/3/parallele.c
	$(CCP) $(MPI_FLAGS) $(FLAGS) -c $< -o $@

$(OBJ)/3/resolution.o: $(SRC)/3/resolution.c
	$(CCP) $(MPI_FLAGS) $(FLAGS) -c $< -o $@

$(OBJ)/3/affichage.o: ../$(FCC)/affichage.c
	$(CCP) $(MPI_FLAGS) $(FLAGS) -c $< -o $@

$(OBJ)/3/calcul-mat.o: ../$(FCC)/calcul-mat.c
	$(CCP) $(MPI_FLAGS) $(FLAGS) -c $< -o $@

$(OBJ)/3/convert.o: ../$(FCC)/convert.c
	$(CCP) $(MPI_FLAGS) $(FLAGS) -c $< -o $@



# ======================================================
# Création de l'exécutable 4
# ======================================================
$(BIN)/4: $(OBJ)/4/affichage.o $(OBJ)/4/calcul-mat.o $(OBJ)/4/convert.o $(OBJ)/4/resolution.o $(OBJ)/4/main.o
	$(CC) $(FLAGS) $(CPPFLAGS) $^ -o $@ $(LDFLAGS) $(LDLIBS)

$(OBJ)/4/main.o: $(SRC)/4/main.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@

$(OBJ)/4/resolution.o: $(SRC)/4/resolution.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@

$(OBJ)/4/affichage.o: ../$(FCC)/affichage.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@

$(OBJ)/4/calcul-mat.o: ../$(FCC)/calcul-mat.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@

$(OBJ)/4/convert.o: ../$(FCC)/convert.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@



# ======================================================
# Création de l'exécutable 5
# ======================================================
$(BIN)/5: $(OBJ)/5/affichage.o $(OBJ)/5/calcul-mat.o $(OBJ)/5/convert.o $(OBJ)/5/resolution.o $(OBJ)/5/main.o
	$(CC) $(FLAGS) $(CPPFLAGS) $^ -o $@ $(LDFLAGS) $(LDLIBS)

$(OBJ)/5/main.o: $(SRC)/5/main.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@

$(OBJ)/5/resolution.o: $(SRC)/5/resolution.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@

$(OBJ)/5/affichage.o: ../$(FCC)/affichage.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@

$(OBJ)/5/calcul-mat.o: ../$(FCC)/calcul-mat.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@

$(OBJ)/5/convert.o: ../$(FCC)/convert.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@



.PHONY: clean

all: clean 1 2 3 4 5

1: $(BIN)/1

2: $(BIN)/2

3: $(BIN)/3

4: $(BIN)/4

5: $(BIN)/5

exe-1:
	make clean
	make 1
	rm -f $(TXT)/1/*
	$(BIN)/1 0 1 200 1 160000

exe-2:
	make clean
	make 2
	rm -f $(TXT)/2/*
	OMP_NUM_THREADS=4 $(BIN)/2 0 1 200 1 160000

exe-3:
	make clean
	make 3
	rm -f $(TXT)/3/*
	mpiexec -n 4 $(BIN)/3 0 1 200 1 160000

exe-4:
	make clean
	make 4
	rm -f $(TXT)/4/*
	$(BIN)/4 0 1 1000 1 1000

exe-5:
	make clean
	make 5
	rm -f $(TXT)/5/*
	$(BIN)/5 1 1 0.02 1 0.00001

clean:
	rm -f $(OBJ)/1/*.o $(OBJ)/2/*.o $(OBJ)/3/*.o $(OBJ)/4/*.o $(OBJ)/5/*.o $(BIN)/* $(TXT)/resultats.txt