# 1 "movement.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "movement.c"
# 1 "movement.h" 1



void thing();
extern int make_iso_compilers_happy;
# 2 "movement.c" 2

 int make_iso_compilers_happy = 1;

void thing() {
    if (1) {
         make_iso_compilers_happy = 2;
    }
}
