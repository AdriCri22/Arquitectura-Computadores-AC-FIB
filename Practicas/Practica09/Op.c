#include <stdio.h>

int main() {
  int x = 665857, y = 470832;
  // Doble precisión
  double xD = x, yD = y;
  double zDouble = xD * xD * xD * xD - 4 * yD * yD * yD * yD - 4 * yD * yD;
  // Simple precisión
  float xS = x, yS = y;
  float zSimple =  xS * xS * xS * xS - 4 * yS * yS * yS * yS - 4 * yS * yS;
  // Enteros
  long long xI = x, yI = y;
  long long zInteger =  xI * xI * xI * xI - 4 * yI * yI * yI * yI - 4 * yI * yI;

  printf("Resultado Doble Precisión %f\n", zDouble);
  printf("Resultado Simple Precisión %f\n", zSimple);
  printf("Resultado con enteros %lld\n", zInteger);
}
