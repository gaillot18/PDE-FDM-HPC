CC = clang
CCP = mpicc

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



.PHONY: clean

all: clean 1

1: $(BIN)/1

exe-1:
	make 1
	$(BIN)/1 0 1 200 1 200

clean:
	rm -f ./texte/*.data ./texte/*.txt
	rm -f $(OBJ)/1/*.o $(BIN)/* $(TXT)/resultats.txt