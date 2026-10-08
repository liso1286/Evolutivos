# 01 — Reglas y límites

Reglas duras para cualquier agente que ejecute esta migración. Si una regla
entra en conflicto con una petición del usuario, se informa y se escala —
no se rompe en silencio.

## A. Preservación de comportamiento

- **PROHIBIDO alterar lógica de negocio**: SQL, condiciones, orden de eventos,
  valores por defecto, textos de mensajes, validaciones. Solo se corrigen
  defectos de migración.
- **El original D6 es la fuente de verdad.** Toda asignación (conexión,
  propiedad, componente, estructura DFM) debe poder justificarse con el
  `.dfm`/`.pas` original o con el comportamiento del exe original.
- La clasificación heurística ("esta query parece de la BD principal") solo se
  usa para **comparar** contra el original, nunca para decidir sola.
- Si el original no existe: reportar como "sin original" y escalar. No
  inventar SQL, componentes ni jerarquías.
- **Código muerto se queda muerto**: componentes/units sin uso comprobado no
  reciben fixes (minimiza diff y riesgo). Documentarlos en el informe.
- Un comportamiento "raro" que también ocurre en el exe D6 es **heredado**,
  no un bug: verificar siempre contra el exe antes de corregir.

## B. Máquinas y compilación

- La máquina de análisis **nunca compila**. Todas las correcciones se
  verifican por inspección estática y consistencia con el original.
- Build solo en la máquina IDE, y siempre **Build All** (no Compile)
  tras limpieza de `.dcu`.
- `.dcu`/`.bpl` no son portables entre versiones de Delphi: los paquetes de
  terceros y el framework propio deben estar recompilados para el IDE destino.
- Ante `F2084 Internal Error` del compilador: primero `.dcu` + rebuild de
  paquetes; el fuente es el último sospechoso (ver PATTERNS §10).

## C. Codificación y edición de ficheros

- Los `.pas`/`.dfm` del proyecto son **Windows-1252** (salvo ficheros
  explícitamente UTF-8 con BOM — respetar el BOM si existe).
- **NO usar herramientas de edición directa** sobre `.pas`/`.dfm` con
  caracteres no-ASCII: pueden reescribir el fichero a UTF-8 y convertir cada
  byte acentuado en `EF BF BD` (U+FFFD, irreversible sin restaurar).
  Usar `scripts/edit-1252.ps1` (lee/escribe byte-safe con cp1252).
- Tras editar, verificar: `check-encoding.ps1 <file>` (cero `EF BF BD`,
  encoding coherente con el original).
- No añadir ni quitar BOM salvo causa justificada; si se pierde, restaurarlo.

## D. Control de versiones

- **No commit ni push sin autorización expresa del usuario** para esa acción
  concreta. Una autorización previa no cubre cambios posteriores.
- Antes de commit:
  - `git diff` completo revisado (sin ruido de encoding/EOL masivo).
  - Cero `ShowMessage('CP-` ni otros checkpoints de depuración.
  - `.dcu` limpiados (`scripts/clean-dcu.ps1`).
  - Excluir ficheros personales/no relacionados (informes, temporales).
- No pushear ramas ni reescribir historia; no `git config`.

## E. Limpieza obligatoria tras cada cambio

- Ejecutar `scripts/clean-dcu.ps1` tras **cada** edición de fuentes.
- No dejar ficheros `*.bak`, `*.modified`, copias `_backup` sueltas salvo que
  el usuario las pida.

## F. Límites de alcance

- Las tablas DBF/Halcyon y cualquier tecnología no-FireDAC son **decisión
  arquitectónica aparte**: nunca asignarles `Connection` de FireDAC.
- No modificar políticas de seguridad del repo ni CI.
- Operaciones destructivas (borrar datos, push force, borrar ramas) requieren
  confirmación explícita de esa acción.

## G. Comunicación

- Reportar con evidencia: fichero:línea, fragmento original, motivo.
- Distinguir siempre: "verificado en original" vs "inferido".
- Si una tarea parece inviable, mantenerla pendiente y explicar el bloqueo —
  no descartarla en silencio.
