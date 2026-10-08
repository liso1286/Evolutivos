# 04 — Matriz de validación y criterios de entrega

## Principio

La referencia es el **exe D6 ejecutándose contra la misma BD**. Cada
corrección se valida comparando comportamiento, no suposiciones. Un defecto
que también existe en D6 es **heredado** → se documenta, no se "arregla".

## Matriz de validación por flujo

| Flujo | Qué comprobar | Esperado |
|---|---|---|
| Arranque | Checks del `.dpr` (avisos, alarmas, derechos) | Mismos avisos que el exe D6 con los mismos datos |
| Abrir cada form | Sin `-512`, sin AV, componentes presentes | Idéntico a D6 |
| Grids | Filas completas (no ~50), columnas, colores, fuentes | Idéntico a D6 |
| Edición/Post | Validaciones y mensajes en su diálogo correcto | Idéntico a D6 (diálogo corporativo para errores) |
| Navegación | Bookmarks, doble-clic, drill-down | Sin `-200`/AV |
| Impresión/listados | Queries de reporte con parámetros correctos | Mismo resultado que D6 |
| Flujos multi-BD | Queries a cada conexión/alternativa | Mismo dato que D6 |

## Protocolo ante un crash reportado

1. Reproducir en la máquina IDE con breakpoint en el handler/entry point.
2. Clasificar por síntoma contra `02-KNOWN-PATTERNS.md`.
3. Si el IDE reporta línea incorrecta (AV con línea desajustada): checkpoints
   `ShowMessage('CP-N')` para bisecar → eliminar después.
4. Pedir al usuario: mensaje exacto + call stack + último click.
5. Verificar primero el `.dfm` original antes de tocar código.
6. Fix → `.dcu` limpios → rebuild → re-validar contra exe D6.

## Criterios de salida de cada fase

- **Fase 2 (conexiones)**: cero datasets vivos sin conexión efectiva; cada
  asignación referenciada a su alias original.
- **Fase 3 (componentes)**: cero campos de componente `.pas` sin `object`
  en `.dfm` que se usen en código.
- **Fase 5 (runtime)**: cero crashes en los flujos probados; los mensajes
  de validación llegan por el diálogo correcto.

## Criterios de entrega final

- Ambas/todas las apps compilan con Build All limpio en el IDE destino.
- Validación visual/funcional de los flujos principales contra el exe D6.
- Informe de pendientes: lo no resuelto, con motivo (sin original / decisión
  pendiente / tecnología distinta).
- Working tree limpio salvo cambios autorizados a commitear.

## Qué reportar en el informe de entrega

- Resumen de cambios por tipo (conexiones, componentes restaurados, visual).
- Lista de componentes muertos dejados sin conexión (deliberado).
- Lista de frentes abiertos (ej. tablas DBF, componentes sin original).
- Divergencias conscientes respecto a D6, si las hay.
