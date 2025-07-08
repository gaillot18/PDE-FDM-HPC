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

.SUFFIXES: .o .c



# ======================================================
# Création de l'exécutable 0
# ======================================================
$(BIN)/0: $(OBJ)/0/affichage.o $(OBJ)/0/calcul-mat.o $(OBJ)/0/convert.o $(OBJ)/0/resolution.o $(OBJ)/0/main.o
	$(CC) $(FLAGS) $^ -o $@

$(OBJ)/0/main.o: $(SRC)/0/main.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/0/resolution.o: $(SRC)/0/resolution.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/0/affichage.o: ../$(FCC)/affichage.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/0/calcul-mat.o: ../$(FCC)/calcul-mat.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/0/convert.o: ../$(FCC)/convert.c
	$(CC) $(FLAGS) -c $< -o $@



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
$(BIN)/4: $(OBJ)/4/affichage.o $(OBJ)/4/calcul-mat.o $(OBJ)/4/convert.o $(OBJ)/4/resolution.o $(OBJ)/4/affichage-struct.o $(OBJ)/4/main.o
	$(CC) $(FLAGS) $^ -o $@

$(OBJ)/4/main.o: $(SRC)/4/main.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/4/resolution.o: $(SRC)/4/resolution.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/4/affichage-struct.o: $(SRC)/4/affichage-struct.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/4/affichage.o: ../$(FCC)/affichage.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/4/calcul-mat.o: ../$(FCC)/calcul-mat.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/4/convert.o: ../$(FCC)/convert.c
	$(CC) $(FLAGS) -c $< -o $@



.PHONY: clean

all: clean 0 1 2 3 4

0 : $(BIN)/0

1 : $(BIN)/1

2 : $(BIN)/2

3 : $(BIN)/3

4 : $(BIN)/4

exe-0:
	make 0
	$(BIN)/0 100

exe-1:
	make 1
	$(BIN)/1 100

exe-2:
	make 2
	OMP_NUM_THREADS=4 $(BIN)/2 100

exe-3:
	make 3
	mpiexec -n 4 $(BIN)/3 100

exe-4:
	make 4
	$(BIN)/4 100

clean:
	rm -f $(OBJ)/0/*.o $(OBJ)/1/*.o $(OBJ)/2/*.o $(OBJ)/3/*.o $(OBJ)/4/*.o $(BIN)/* $(TXT)/resultats.txt