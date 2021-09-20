/** Para contestar a la pregunta del final, usamos los comandos:
    ./sim 2 | grep E > sample.out
    wc -l sample.out

    Y por cada poñítica de escritura nos da:
        WT 15625
        CB 16078
*/

#include "CacheSim.h"
#include <stdio.h>

/* Posa aqui les teves estructures de dades globals
 * per mantenir la informacio necesaria de la cache
 * */

 /* Muestra el contenido de las diferentes líneas de la Memoria de Etiquetas de
 la cache. Creamos dos vias de cache de 64 (4096 / 32 = 128 / 2 = 64) */
int cache_via0[64];
int cache_via1[64];
int last_used[64];

// Variables para medir los aciertos, fallos y accesos a la MC
int fallos, accesos = 0;

/* La rutina init_cache es cridada pel programa principal per
 * inicialitzar la cache.
 * La cache es inicialitzada al comen�ar cada un dels tests.
 * */
void init_cache () {
  totaltime=0.0;

  /* Escriu aqui el teu codi */
  // Inicializamos la cache (las dos vías) a -1
  for (int i = 0; i < 64; i++) {
    cache_via0[i] = -1;
    cache_via1[i] = -1;
    last_used[i] = 1;
  }
}

/* La rutina reference es cridada per cada referencia a simular */
void reference (unsigned int address)
{
	unsigned int byte;
	unsigned int bloque_m;
	unsigned int conj_mc;
	unsigned int via_mc;
	unsigned int tag;
	unsigned int miss;	   // boolea que ens indica si es miss
	unsigned int replacement;  // boolea que indica si es reempla�a una linia valida
	unsigned int tag_out;	   // TAG de la linia reempla�ada
	float t1,t2;		// Variables per mesurar el temps (NO modificar)

	t1=GetTime();

  /* Escriu aqui el teu codi */
  byte = address & 0x0000001F;
  bloque_m = address >> 5;
  conj_mc = (address << 21) >> 26;
  tag = address >> 11;

  accesos++;

  miss = false;
  replacement = false;
  // HIT
  if (cache_via0[conj_mc] == tag) via_mc = 0;
  else if (cache_via1[conj_mc] == tag) via_mc = 1;
  // MISS
  else {
    fallos++;
    miss = true;
    replacement = false;
    if (last_used[conj_mc] == 1) {
      if (cache_via0[conj_mc] != -1) {
        replacement = true;
        tag_out = cache_via0[conj_mc];
      }
      via_mc = 0;
      cache_via0[conj_mc] = tag;
    }
    else {
      if (cache_via1[conj_mc] != -1) {
        replacement = true;
        tag_out = cache_via1[conj_mc];
      }
      via_mc = 1;
      cache_via1[conj_mc] = tag;
    }
  }

  last_used[conj_mc] = via_mc;

	/* La funcio test_and_print escriu el resultat de la teva simulacio
	 * per pantalla (si s'escau) i comproba si hi ha algun error
	 * per la referencia actual. Tamb� mesurem el temps d'execuci�
	 * */
	t2=GetTime();
	totaltime+=t2-t1;
	test_and_print2 (address, byte, bloque_m, conj_mc, via_mc, tag,
			miss, replacement, tag_out);
}

/* La rutina final es cridada al final de la simulacio */
void final () {
 	/* Escriu aqui el teu codi */
  printf("Fallos: %d  Aciertos: %d  Accesos: %d\n", fallos, accesos - fallos, accesos);
}
