#include <stdio.h>
typedef double db;

// force in N, mass in kg, time in s
db velocity(db force, db mass, db time) { return (force / mass) * time; }

int maker(void) {
    db velo = velocity(100.0, 10.0, 10);
    printf("%f\n", velo);
    return 0;
}
