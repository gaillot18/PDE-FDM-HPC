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
$(BIN)/4: $(OBJ)/4/affichage.o $(OBJ)/4/calcul-mat.o $(OBJ)/4/convert.o $(OBJ)/4/resolution.o $(OBJ)/4/parallele.o $(OBJ)/4/main.o
	$(CCP) $(MPI_FLAGS) $(FLAGS) $^ -o $@

$(OBJ)/4/main.o: $(SRC)/4/main.c
	$(CCP) $(MPI_FLAGS) $(FLAGS) -c $< -o $@

$(OBJ)/4/parallele.o: $(SRC)/4/parallele.c
	$(CCP) $(MPI_FLAGS) $(FLAGS) -c $< -o $@

$(OBJ)/4/resolution.o: $(SRC)/4/resolution.c
	$(CCP) $(MPI_FLAGS) $(FLAGS) -c $< -o $@

$(OBJ)/4/affichage.o: ../$(FCC)/affichage.c
	$(CCP) $(MPI_FLAGS) $(FLAGS) -c $< -o $@

$(OBJ)/4/calcul-mat.o: ../$(FCC)/calcul-mat.c
	$(CCP) $(MPI_FLAGS) $(FLAGS) -c $< -o $@

$(OBJ)/4/convert.o: ../$(FCC)/convert.c
	$(CCP) $(MPI_FLAGS) $(FLAGS) -c $< -o $@



# ======================================================
# Création de l'exécutable 5
# ======================================================
$(BIN)/5: $(OBJ)/5/affichage.o $(OBJ)/5/calcul-mat.o $(OBJ)/5/convert.o $(OBJ)/5/resolution.o $(OBJ)/5/affichage-struct.o $(OBJ)/5/main.o
	$(CC) $(FLAGS) $^ -o $@

$(OBJ)/5/main.o: $(SRC)/5/main.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/5/resolution.o: $(SRC)/5/resolution.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/5/affichage-struct.o: $(SRC)/5/affichage-struct.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/5/affichage.o: ../$(FCC)/affichage.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/5/calcul-mat.o: ../$(FCC)/calcul-mat.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJ)/5/convert.o: ../$(FCC)/convert.c
	$(CC) $(FLAGS) -c $< -o $@



# ======================================================
# Création de l'exécutable 6
# ======================================================
$(BIN)/6: $(OBJ)/6/affichage.o $(OBJ)/6/calcul-mat.o $(OBJ)/6/convert.o $(OBJ)/6/resolution.o $(OBJ)/6/main.o
	$(CC) $(FLAGS) $(CPPFLAGS) $^ -o $@ $(LDFLAGS) $(LDLIBS)

$(OBJ)/6/main.o: $(SRC)/6/main.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@

$(OBJ)/6/resolution.o: $(SRC)/6/resolution.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@

$(OBJ)/6/affichage.o: ../$(FCC)/affichage.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@

$(OBJ)/6/calcul-mat.o: ../$(FCC)/calcul-mat.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@

$(OBJ)/6/convert.o: ../$(FCC)/convert.c
	$(CC) $(FLAGS) $(CPPFLAGS) -c $< -o $@



.PHONY: clean

all: clean 0 1 2 3 4 5 6

0 : $(BIN)/0

1: $(BIN)/1

2: $(BIN)/2

3: $(BIN)/3

4: $(BIN)/4

5: $(BIN)/5

6: $(BIN)/6

exe-0:
	make 0
	$(BIN)/0 50

exe-1:
	make 1
	$(BIN)/1 300

exe-2:
	make 2
	OMP_NUM_THREADS=4 $(BIN)/2 300

exe-3:
	make 3
	mpiexec -n 8 $(BIN)/3 300

exe-4:
	make 4
	mpiexec -n 4 $(BIN)/4 100

exe-5:
	make 5
	$(BIN)/5 500

exe-6:
	make 6
	$(BIN)/6 500

clean:
	rm -f $(OBJ)/0/*.o $(OBJ)/1/*.o $(OBJ)/2/*.o $(OBJ)/3/*.o $(OBJ)/4/*.o $(OBJ)/5/*.o $(OBJ)/6/*.o $(BIN)/* $(TXT)/resultats.txt