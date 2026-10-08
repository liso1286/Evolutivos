# Informe de Esfuerzo y Tiempo de Migración de Evolutivos Delphi 6 → Delphi 13

**Fecha:** 8 de octubre de 2026  
**Proyecto:** Guttmann - Migración de Evolutivos  
**Cliente:** [Nombre del cliente]

---

## 1. Resumen Ejecutivo

Este informe detalla el esfuerzo estimado para migrar los evolutivos desarrollados en Delphi 6 a Delphi 13, integrándolos en el proyecto base ya migrado (cursProd). La migración comprende **88 archivos .pas** y **79 archivos .dfm** distribuidos en múltiples módulos, con un total aproximado de **58,000 líneas de código**.

**Tiempo total estimado: 304 horas (38 jornadas laborales de 8 horas)**

---

## 2. Requisitos del Cliente

Para poder iniciar y completar exitosamente la migración de los evolutivos, el cliente debe proporcionar los siguientes elementos:

### 2.1 Ejecutables Delphi 6 con Evolutivos (CRÍTICO)

**Requisito:** El cliente debe proporcionar los ejecutables compilados en Delphi 6 con todos los cambios evolutivos aplicados.

**Importancia:** Estos ejecutables son el punto de partida fundamental y la referencia absoluta para las pruebas de validación. Sin ellos, no es posible garantizar la paridad funcional y visual entre la versión migrada a Delphi 13 y el comportamiento original esperado por el cliente.

**Módulos requeridos:**
- Admissions.exe (con evolutivos aplicados)
- CursClin.exe (con evolutivos aplicados, si aplica)
- Cualquier otro ejecutable que haya recibido evolutivos

**Uso:** Cada funcionalidad evolutiva debe validarse comparando su comportamiento en Delphi 13 contra el ejecutable Delphi 6 correspondiente.

### 2.2 Archivos Faltantes de los Evolutivos

**Requisito:** El cliente debe proporcionar los archivos faltantes identificados en el análisis de DFM/PAS.

**Archivos faltantes (12 en total):**

#### DFM sin PAS correspondiente (11 archivos):
1. `Admissions/Barbara/PrintRtfLogo.dfm` → requiere `PrintRtfLogo.pas`
2. `Admissions/Fitxes/FitxaAmbulancies.dfm` → requiere `FitxaAmbulancies.pas`
3. `agenda paciente/agendaimpriu.dfm` → requiere `agendaimpriu.pas`
4. `Data/DataCMBD.dfm` → requiere `DataCMBD.pas`
5. `Data/DataConsultesSQL.dfm` → requiere `DataConsultesSQL.pas`
6. `Data/DataEducacio.dfm` → requiere `DataEducacio.pas`
7. `Data/DataEscales.dfm` → requiere `DataEscales.pas`
8. `Data/DataHl7Log.dfm` → requiere `DataHl7Log.pas`
9. `Data/DataOrtesis.dfm` → requiere `DataOrtesis.pas`
10. `NovaHCE/HCEListenerAdmissions.dfm` → requiere `HCEListenerAdmissions.pas`
11. `printselect/Unit3.dfm` → requiere `Unit3.pas`

#### PAS que requiere DFM (1 archivo):
1. `Admissions/Fitxes/FitxaHistorial.pas` → requiere `FitxaHistorial.dfm`

**Importancia:** Sin estos archivos faltantes, la migración no puede completarse correctamente. Son componentes visuales y datamodules necesarios para el funcionamiento de los evolutivos.

**Fuentes alternativas:** Si el cliente no tiene estos archivos disponibles, se pueden buscar en:
- `C:\Proyectos\Evolutivos Originales` (versión D6 congelada del cliente)
- `C:\Proyectos\Originales` (código base completo en Delphi 6)

---

## 3. Contexto del Proyecto

### 2.1 Situación Actual

- **Proyecto base migrado:** cursProd (C:\Proyectos\Guttmann\cursProd) - migrado de Delphi 6 a Delphi 12/13 con BDE→FireDAC
- **Evolutivos entregados:** Desarrollo paralelo del cliente en Delphi 6 durante la migración (C:\Proyectos\Guttmann\Evolutivos)
- **Objetivo:** Integrar los evolutivos en el proyecto base ya migrado a Delphi 13

### 3.1 Rutas de Referencia

| Ruta | Propósito |
|------|-----------|
| C:\Proyectos\Guttmann\Evolutivos | Workspace de trabajo (único modificable) |
| C:\Proyectos\Evolutivos Originales | Fuentes D6 congelados del cliente (referencia) |
| C:\Proyectos\Originales | Código base completo en Delphi 6 (contexto) |
| C:\Proyectos\Guttmann\cursProd | Proyecto migrado a Delphi 13 (referencia de soluciones) |
| C:\Proyectos\GuttmannD6 | Ejecutables originales Delphi 6 |
| C:\Proyectos\GuttmannD13 | Ejecutables migrados Delphi 13 |

**Nota sobre "counterpart":** Se denomina "counterpart" a aquellos archivos de los evolutivos que tienen una versión equivalente ya migrada en el proyecto cursProd. Por ejemplo, si el evolutivo incluye una modificación en `FitxaGestioLlits.pas` y este archivo ya existe migrado en cursProd, se puede aprovechar la solución de migración ya aplicada en cursProd para el evolutivo, lo que reduce el esfuerzo. Los módulos sin counterpart son aquellos que son completamente nuevos y no tienen equivalente en el proyecto base migrado, por lo que requieren migración completa desde cero.

---

## 3. Análisis Comparativo: Originales vs Evolutivos

### 3.1 Alcance de los Evolutivos

**Total de archivos a migrar:**
- **88 archivos .pas** (código fuente)
- **79 archivos .dfm** (formularios)
- **2 archivos .dpr** (proyectos)

**Distribución por módulo:**

| Módulo | Archivos .pas | Archivos .dfm | Líneas de código aprox. | Tipo de migración |
|--------|---------------|---------------|-------------------------|-------------------|
| Admissions | 24 | 19 | 28,372 | Con counterpart en cursProd |
| ClausPas | 3 | 0 | 1,765 | Migración completa desde cero |
| Codifica | 3 | 2 | 980 | Migración completa desde cero |
| CodisICD | 1 | 1 | 1,382 | Migración completa desde cero (DBF/Halcyon) |
| PConfig | 11 | 11 | 9,080 | Con counterpart en cursProd |
| agenda paciente | 3 | 3 | ~2,000 | Migración completa desde cero |
| Otros módulos* | 43 | 43 | ~15,000 | Varios tipos |
| **TOTAL** | **88** | **79** | **~58,579** | - |

*Otros módulos: Data, DataHola, Hccc, SAP, ServiceApplication, Traspassos, Utilitats, etc.

### 3.2 Nivel de Cambios

**Análisis comparativo (Originales vs Evolutivos):**

El análisis comparativo muestra que los evolutivos representan **cambios significativos** en los siguientes aspectos:

1. **Nuevas funcionalidades:**
   - Forms completamente nuevos (ej. FitxaAmbulancias, FitxaGestioLlits, FitxaBloqueigLlits)
   - Lógica de negocio adicional en forms existentes
   - Nuevos datamodules y queries especializadas

2. **Componentes datasets:** **64 datasets totales**
   - 55× TQuery (BDE)
   - 6× TIBQuery (IBX)
   - 2× TIBDataSet (IBX)
   - 1× TMemoryTable
   - ThySqlTable (framework Haley)
   - 5× THalcyonDataSet (CodisICD - DBF)

3. **Tecnologías adicionales:**
   - QuickReport (reportes)
   - JVCL (Jedi VCL)
   - TaskBar
   - rxMemTable
   - Halcyon/DBF (CodisICD) - **tecnología no migrada a FireDAC**

4. **Conexiones de datos detectadas:**
   - Conexión principal (wData.IBGuttmann)
   - Conexión secundaria (wDataHola.baseHola)
   - Paths BDE crudos (Codifica)
   - Paths DBF (CodisICD) - **requiere decisión arquitectónica**

**Conclusión del análisis:** Los evolutivos NO son simples parches sino **funcionalidades completas** que requieren migración integral, no solo aplicación de diferencias.

---

## 4. Complejidad de la Migración

### 4.1 Comparación: Migración Base vs Evolutivos

La migración de los evolutivos presenta una **complejidad similar o mayor** que la migración base por las siguientes razones:

| Aspecto | Migración Base (cursProd) | Migración Evolutivos | Impacto |
|---------|---------------------------|----------------------|---------|
| Framework Haley | Ya migrado a D12/D13 | Reutilizar framework existente | Bajo |
| Conexiones BD | Ya mapeadas (Interna → wData.IBGuttmann) | Reaplicar mapeo en nuevos datasets | Medio |
| Units con counterpart | N/A | 24 units de Admissions/PConfig tienen counterpart | Bajo (reutilizar soluciones) |
| Units sin counterpart | N/A | 10+ modules sin counterpart (migración desde cero) | Alto |
| Tecnologías no-FireDAC | BDE/IBX → FireDAC | BDE/IBX + Halcyon/DBF → FireDAC + decisión | Muy Alto |
| Integración | Proyecto completo | Integrar en proyecto existente | Medio |
| Validación | Validación completa | Validación de nuevas funcionalidades | Medio |

**Conclusión:** La migración de evolutivos es **comparable en complejidad** a la migración base debido a:
- Módulos sin counterpart que requieren migración completa desde cero
- Tecnologías adicionales (Halcyon/DBF) que no tienen equivalente directo en FireDAC
- Necesidad de integración en el proyecto existente sin romper lo ya migrado

### 4.2 Factores de Complejidad Adicional

1. **Parcialidad de entregas:** Algunas units llegan solo con .pas o solo con .dfm, lo que requiere reconstrucción
2. **Dependencias cruzadas:** Los evolutivos pueden depender de datamodules que no fueron entregados (están en cursProd)
3. **Tecnologías no migradas:** Halcyon/DBF en CodisICD requiere decisión arquitectónica separada
4. **Integración delicada:** Debe preservar el funcionamiento del proyecto base ya migrado

---

## 5. Metodología de Migración

La migración seguirá una metodología estructurada con las siguientes fases:

### Fase 0: Inventario y Preparación (8 horas)
- Verificar completitud de fuentes originales
- Validar ejecutables D6 funcionando
- Construir mapa de conexiones originales
- Identificar tecnologías no-FireDAC
- Clasificar units: con/sin counterpart

### Fase 1: Conexiones y Datasets (40 horas)
- Escanear datasets sin Connection/ConnectionName
- Mapear conexiones originales a conexiones FireDAC
- Verificar asignaciones programáticas en .pas
- Clasificar datasets vivos vs muertos
- Aplicar Connection solo a vivas
- Separar tecnologías no-FireDAC (DBF/Halcyon)

### Fase 2: Componentes Perdidos (24 horas)
- Escanear campos .pas sin object en .dfm
- Restaurar componentes desde originales D6
- Reconciliar jerarquías si el original reestructuró
- Documentar colisiones

### Fase 3: Paridad Visual (16 horas)
- Ajustar ParentBackground donde el original tiene Color
- Configurar DrawingStyle = gdsClassic en grids
- Restaurar TitleFont/FooterFont de EhLib
- Configurar FetchOptions.Mode = fmAll
- Restaurar DataSource.DataSet
- Comparar form a form contra exe D6

### Fase 4: Estabilización Runtime (48 horas)
- Aplicar catálogo de patrones conocidos
- Corregir crashes -512, -338, bookmarks, Null cast, AVs
- Validar contra exe D6
- Eliminar checkpoints de depuración

### Fase 5: Integración en Proyecto (32 horas)
- Sustituir units migradas en cursProd
- Actualizar .dpr con nuevas units
- Verificar orden de creación de datamodules
- Resolver conflictos de dependencias
- Build All y corrección de errores de compilación

### Fase 6: Validación Funcional (48 horas)
- Matriz de validación por flujo
- Pruebas de cada funcionalidad evolutiva
- Comparación lado a lado con exe D6
- Verificar integración con funcionalidades base
- Corrección de errores detectados

### Fase 7: Corrección de Errores (40 horas)
- Corrección de errores reportados por cliente
- Ajustes de paridad visual
- Optimización de performance
- Documentación de pendientes

### Fase 8: Entrega (20 horas)
- Limpieza de .dcu y archivos temporales
- Informe de cambios realizados
- Informe de pendientes
- Preparación de entregables

---

## 6. Desglose de Tiempos por Módulo

| Módulo | Fase 0 | Fase 1-3 | Fase 4-6 | Fase 7-8 | Total |
|--------|--------|----------|----------|----------|-------|
| Admissions (con counterpart) | 2h | 19h | 23h | 19h | **63h** |
| ClausPas (sin counterpart) | 1h | 10h | 10h | 9h | **30h** |
| Codifica (sin counterpart) | 1h | 10h | 10h | 9h | **30h** |
| CodisICD (DBF/Halcyon) | 2h | 14h | 14h | 14h | **44h** |
| PConfig (con counterpart) | 1h | 10h | 14h | 9h | **34h** |
| agenda paciente (sin counterpart) | 1h | 10h | 10h | 9h | **30h** |
| Otros módulos | 0h | 29h | 24h | 20h | **73h** |
| **GLOBAL** | **8h** | **102h** | **105h** | **89h** | **304h** |

**Nota:** La Fase 1 (Framework y Terceros) ya está completa. El tiempo global incluye overhead de coordinación, comunicación con cliente. Total: **304 horas** (38 jornadas).

---

## 7. Justificación de Tiempos

### 7.1 Por qué no es una "simple modificación"

Es importante aclarar que, aunque los evolutivos representan cambios incrementales sobre el código base, la migración a Delphi 13 **no es una simple aplicación de parches** por las siguientes razones:

1. **Migración completa de artefactos:** Cada evolutivo requiere migración integral de todos sus componentes (BDE→FireDAC, TQuery→TFDQuery, propiedades, eventos, conexiones). No se puede aplicar solo la "diferencia" porque el contexto tecnológico cambió completamente.

2. **Units sin counterpart:** 10+ módulos (ClausPas, Codifica, CodisICD, agenda paciente, etc.) no tienen equivalente en el proyecto migrado, por lo que requieren migración completa desde cero, con el mismo esfuerzo que una migración base.

3. **Tecnologías no migradas:** CodisICD usa Halcyon/DBF que no tiene equivalente directo en FireDAC. Esto requiere análisis arquitectónico y decisión de implementación separada.

4. **Integración compleja:** La integración debe preservar el funcionamiento del proyecto base ya migrado. Cualquier cambio en datamodules compartidos puede afectar funcionalidades existentes.

5. **Validación completa:** Cada funcionalidad evolutiva debe validarse funcionalmente contra el exe D6, no solo compilarse. Esto requiere pruebas exhaustivas de los nuevos flujos.

**Analogía:** Migrar evolutivos es como construir una extensión en una casa que ya fue renovada. Aunque la extensión es "nueva", debe integrarse con la renovación existente, respetar los nuevos estándares, y no comprometer la estructura ya construida.

### 7.2 Comparación con Migración Base

La migración base (cursProd) involucró ~300 forms y tomó varios meses. Los evolutivos representan aproximadamente **20-25% del volumen del proyecto base** pero con una complejidad proporcionalmente mayor por:

- Concentración de funcionalidades nuevas en menos archivos
- Tecnologías adicionales no presentes en la base
- Necesidad de integración delicada

El tiempo estimado (280 horas) es **consistente con el esfuerzo proporcional** al alcance real de los evolutivos.

---

## 8. Riesgos y Dependencias

### 8.1 Riesgos Identificados

| Riesgo | Impacto | Probabilidad | Mitigación |
|--------|---------|---------------|-------------|
| CodisICD (DBF/Halcyon) sin solución clara | Alto | Alta | Escalar decisión arquitectónica al cliente en Fase 2 |
| Faltan .dfm o .pas en entregas parciales | Medio | Media | Reconstruir desde contraparte o documentar como pendiente |
| Conflictos con proyecto base cursProd | Medio | Baja | Validación exhaustiva en Fase 6-7 |
| Paquetes de terceros no compilados para D13 | Alto | Baja | Verificar en Fase 1, recompilar si necesario |
| Errores de encoding (catalán) | Bajo | Media | Usar scripts byte-safe, verificar tras cada edición |

### 8.2 Dependencias Externas

- **Ejecutables D6 funcionando:** Requeridos para validación visual y funcional
- **Acceso a base de datos de prueba:** Para validación de queries y flujos
- **Framework HaleyVCL recompilado para D13:** Debe estar disponible en máquina IDE
- **Paquetes de terceros (JVCL, EhLib) para D13:** Deben estar instalados
- **Decisión arquitectónica para Halcyon/DBF:** Requerida antes de migrar CodisICD

---

## 9. Criterios de Entrega

### 9.1 Criterios de Éxito

1. **Compilación:** Todos los proyectos (Admissions, CursClin, nuevos módulos) compilan con Build All limpio en Delphi 13
2. **Paridad funcional:** Cada funcionalidad evolutiva se comporta idéntico al exe D6 con los mismos datos
3. **Paridad visual:** Forms, grids, colores y fuentes coinciden con el exe D6
4. **Integración:** El proyecto base (cursProd) continúa funcionando correctamente
5. **Sin crashes:** Cero crashes en los flujos probados
6. **Información completa:** Informe de cambios y pendientes entregado

### 9.2 Pendientes Documentados

Se entregarán documentados explícitamente:
- Componentes/units sin original identificados
- Tecnologías no migradas (ej. Halcyon/DBF si se decide postergar)
- Comportamientos heredados del D6 que también existen en D13 (no bugs)
- Decisiones arquitectónicas pendientes de validación del cliente

---

## 10. Recomendaciones

### 10.1 Para el Cliente

1. **Validar el alcance:** Asegurarse de que todos los evolutivos requeridos están incluidos en la entrega de fuentes
2. **Priorizar módulos:** Si el tiempo es crítico, priorizar Admissions y PConfig (tienen counterpart, menor riesgo)
3. **Decisión sobre Halcyon/DBF:** Definir estratégicamente cómo manejar CodisICD antes de iniciar la migración
4. **Disponibilidad de validación:** Tener disponibles ejecutables D6 y entorno de prueba para validación funcional

### 10.2 Para el Equipo de Desarrollo

1. **Seguir metodología estricta:** Aplicar la metodología de migración documentada y los checklists
2. **Validación continua:** No esperar al final para validar; validar cada fase contra exe D6
3. **Comunicación proactiva:** Reportar bloques o decisiones pendientes inmediatamente
4. **Documentación exhaustiva:** Cada fix debe estar justificado con evidencia del original D6

---

## 11. Conclusión

La migración de los evolutivos de Delphi 6 a Delphi 13 es un proyecto de **envergadura comparable a una migración parcial**, con un esfuerzo estimado de **304 horas (38 jornadas laborales)**.

Este esfuerzo está justificado por:
- La necesidad de migrar completamente todos los artefactos proporcionados (no solo diferencias)
- La presencia de módulos sin counterpart que requieren migración desde cero
- Tecnologías adicionales (Halcyon/DBF) que requieren análisis arquitectónico
- La complejidad de integración en el proyecto base ya migrado
- La validación funcional completa requerida para asegurar paridad con el D6

**Tiempo total estimado: 304 horas (38 jornadas de 8 horas)**

Este estimado contempla la coordinación, comunicación con el cliente, y todas las actividades necesarias para asegurar una entrega de calidad. La metodología probada en la migración base (cursProd) minimiza riesgos y asegura una entrega estable.

---

**Preparado por:** Equipo de Desarrollo  
**Aprobado por:** [Nombre]  
**Fecha:** 8 de octubre de 2026
