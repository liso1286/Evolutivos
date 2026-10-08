# Informe de Esfuerzo y Tiempo de Migración de Evolutivos Delphi 6 → Delphi 13

**Fecha:** 8 de octubre de 2026  
**Proyecto:** Guttmann - Migración de Evolutivos  
**Cliente:** [Nombre del cliente]

---

## 1. Resumen Ejecutivo

Este informe detalla el esfuerzo estimado para migrar los evolutivos desarrollados en Delphi 6 a Delphi 13, integrándolos en el proyecto base ya migrado (cursProd). La migración comprende **88 archivos .pas** y **79 archivos .dfm** distribuidos en múltiples módulos, con un total aproximado de **58,000 líneas de código**.

**Tiempo total estimado (sin Halcyon): 304 horas (38 jornadas laborales de 8 horas)**

**Tiempo total estimado (con Halcyon): 436-472 horas (54.5-59 jornadas laborales de 8 horas)**

---

## 2. Requisitos del Cliente

Para poder iniciar y completar exitosamente la migración de los evolutivos, el cliente debe proporcionar los siguientes elementos:

### 2.1 Ejecutables Delphi 6 con Evolutivos (CRÍTICO)

**Requisito:** El cliente debe proporcionar los ejecutables compilados en Delphi 6 con todos los cambios evolutivos aplicados.

**Importancia:** Estos ejecutables son el punto de partida fundamental y la referencia absoluta para las pruebas de validación. Sin ellos, no es posible garantizar la paridad funcional y visual entre la versión migrada a Delphi 13 y el comportamiento original esperado por el cliente.

**Módulos requeridos:**
- Admissions.exe (con evolutivos aplicados)
- CursClin.exe (con evolutivos aplicados, si aplica)

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

### 3.1 Situación Actual

- **Proyecto base migrado:** cursProd (C:\Proyectos\Guttmann\cursProd) - migrado de Delphi 6 a Delphi 12/13 con BDE→FireDAC
- **Evolutivos entregados:** Desarrollo paralelo del cliente en Delphi 6 durante la migración (C:\Proyectos\Guttmann\Evolutivos)
- **Objetivo:** Integrar los evolutivos en el proyecto base ya migrado a Delphi 13

### 3.2 Rutas de Referencia

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

## 4. Análisis Comparativo: Originales vs Evolutivos

### 4.1 Alcance de los Evolutivos

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

### 4.2 Nivel de Cambios

**Análisis comparativo (Originales vs Evolutivos):**

El análisis comparativo muestra que los evolutivos representan **cambios significativos** en los siguientes aspectos:

1. **Nuevas funcionalidades:**
   - Forms completamente nuevos (ej. FitxaAmbulancies, FitxaGestioLlits, FitxaBloqueigLlits)
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

## 5. Complejidad de la Migración

### 5.1 Comparación: Migración Base vs Evolutivos

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

### 5.2 Factores de Complejidad Adicional

1. **Tecnologías no migradas:** Halcyon/DBF en CodisICD requiere decisión arquitectónica separada
2. **Integración delicada:** Debe preservar el funcionamiento del proyecto base ya migrado

---

## 6. Metodología de Migración

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

## 7. Desglose de Tiempos por Módulo (Sin Halcyon)

**Nota sobre el alcance de este desglose:** Los evolutivos incluyen tres módulos que utilizan la tecnología Halcyon para acceso a archivos DBF (Traspassos, Importacio dades y CodisICD). Estos módulos no son aplicativos independientes sino herramientas auxiliares administrativas que no son críticas para el funcionamiento de los aplicativos principales (Admissions y Curs Clinic). Por esta razón, y dado que su migración presenta una complejidad técnica significativa al no existir experiencia previa documentada, se ha decidido tratar la migración de Halcyon como un proyecto independiente posterior a la entrega principal. El desglose a continuación corresponde únicamente a la migración de los evolutivos principales, excluyendo los módulos que usan Halcyon.

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

## 8. Independencia de la Migración de Halcyon

### 8.1 Naturaleza de los Módulos con Halcyon

Los evolutivos incluyen tres módulos que utilizan la tecnología Halcyon para acceso a archivos DBF:

| Módulo | Tipo | Función | ¿Aplicativo independiente? |
|--------|------|---------|---------------------------|
| Traspassos | Form/Unit | Herramienta de migración de códigos clínicos | No |
| Importacio dades | Form/Unit | Herramienta de importación de datos DBF | No |
| CodisICD | Form/Unit | Herramienta de mantenimiento de códigos ICD | No |

Estos módulos no tienen archivos .dpr propios, lo que indica que son herramientas auxiliares administrativas, no aplicativos independientes.

### 8.2 Dependencia con Aplicativos Principales

Los aplicativos principales (Admissions y Curs Clinic) NO dependen de los módulos Halcyon para su funcionamiento:

- **Dependencia unidireccional:** Los módulos Halcyon acceden tanto a archivos DBF (vía THalcyonDataSet) como a la base de datos principal Firebird (vía TQuery, TDatabase), pero los aplicativos principales no dependen de los módulos Halcyon. Si los módulos Halcyon no se invocan, los aplicativos principales funcionan normalmente.
- **Acceso vía menús:** En el proyecto migrado (cursProd), CodisICD aparece solo como un item de menú en PConfig, no como dependencia de ejecución
- **Sin invocación automática:** Los módulos Halcyon son herramientas auxiliares que se invocan manualmente desde menús de administración, no se ejecutan automáticamente como parte del flujo normal de usuario

### 8.3 Estrategia Recomendada: Migración en Fases

**Fase 1: Migración Principal (sin Halcyon)**
- Migrar todos los evolutivos de Admissions y Curs Clinic
- Excluir temporalmente: Traspassos, Importacio dades, CodisICD
- Integrar en el proyecto migrado a Delphi 13
- Compilar y validar funcionalidad principal
- **Tiempo estimado:** 304 horas (38 jornadas)

**Fase 2: Migración Halcyon (proyecto independiente)**
- Tratar como proyecto separado
- Migrar Traspassos, Importacio dades, CodisICD
- **Tiempo estimado:** 132-168 horas (16.5-21 jornadas)

### 8.4 Ventajas de esta Estrategia

1. **Entrega más rápida:** El cliente obtiene los aplicativos principales en 38 jornadas en lugar de 54.5-59
2. **Menor riesgo en primera entrega:** Si la migración Halcyon tiene problemas, no bloquea la entrega principal
3. **Flexibilidad:** El cliente puede evaluar si realmente necesita las herramientas Halcyon en Delphi 13
4. **Validación incremental:** Experiencia con la migración principal antes de abordar Halcyon
5. **Posibilidad de desescalar:** Si las herramientas Halcyon no son críticas, puede decidir no migrarlas

### 8.5 Impacto en Cronograma

**Cronograma Original (con Halcyon integrado):**
- Evolutivos principales: 304 horas (38 jornadas)
- Migración Halcyon: 132-168 horas (16.5-21 jornadas)
- **Total: 436-472 horas (54.5-59 jornadas)**

**Cronograma Propuesto (Halcyon separado):**
- **Fase 1 (entrega principal):** 304 horas (38 jornadas)
- **Fase 2 (migración Halcyon):** 132-168 horas (16.5-21 jornadas) - proyecto separado

---

## 9. Migración de Halcyon a Delphi 13

### 9.1 Situación Actual

**Versión Halcyon en uso:**
- Versión detectada: Halcyon 6.53 (10 Sep 1999)
- Componentes: 37 THalcyonDataSet + 40+ TCreateHalcyonDataSet
- Units afectadas: Traspassos/main.pas, Importacio dades/Main.pas, CodisICD/main.pas
- Uso: Acceso a archivos DBF (dBASE/Clipper/FoxPro) para clasificaciones médicas

**Compatibilidad:**
- Halcyon 6.53 fue diseñado para Delphi 6
- Las versiones más recientes de Halcyon (6.98) llegan hasta Delphi 2010 (XE)
- **NO existe versión oficial de Halcyon para Delphi 12/13**

### 9.2 Opciones de Migración

#### Opción 1: Migrar a TDbf (Recomendada)

**Descripción:** TDbf es un componente open source para acceso a DBF, con paquetes oficiales para Delphi 13.

**Ventajas:**
- Compatibilidad oficial con Delphi 13 (paquetes disponibles desde septiembre 2025)
- Sin costo de licencia (open source)
- Cumple requisito del cliente (mantiene DBF activos)
- API documentada y estable
- Adecuado al caso (solo usa índices internos, no NTX/CDX externos)

**Desventajas:**
- API completamente diferente a Halcyon (requiere refactorización extensa)
- Sin experiencia previa en el proyecto con esta tecnología
- Requiere cambio de paradigma (DatabaseName → FilePath)

**Esfuerzo estimado:** 132-168 horas (16.5-21 jornadas)

#### Opción 2: Migrar a UniDAC DBF Provider

**Descripción:** Componente comercial de Devart con provider DBF para Delphi 13.

**Ventajas:**
- Compatibilidad oficial con Delphi 13
- Soporte empresarial
- Alto rendimiento

**Desventajas:**
- Costo de licencia significativo
- Sobredimensionado para 3 módulos pequeños
- API diferente a Halcyon

**Esfuerzo estimado:** 108-148 horas + costo de licencia

#### Opción 3: Recompilar Halcyon 6.98

**Descripción:** Intentar recompilar el código fuente de Halcyon 6.98 para Delphi 13.

**Ventajas:**
- Sin costo de licencia
- Código fuente disponible

**Desventajas:**
- Sin garantía de compatibilidad con Delphi 13 (código de 2011)
- Muy alto riesgo de incompatibilidades no documentadas
- Sin soporte ni comunidad activa

**Esfuerzo estimado:** 56-80 horas (pero riesgo muy alto)

#### Opción 4: Migrar Datos a Firebird

**Descripción:** Migrar todos los datos DBF a tablas Firebird, dejando DBF solo como histórico.

**Ventajas:**
- Tecnología nativa del proyecto
- Sin dependencias externas

**Desventajas:**
- NO cumple requisito del cliente (no mantiene DBF activos)
- Requiere migración de datos compleja

**Esfuerzo estimado:** 128-184 horas

### 9.3 Recomendación: TDbf

TDbf es la tecnología recomendada porque:

| Criterio | TDbf | UniDAC | Halcyon 6.98 | Firebird |
|----------|------|--------|-------------|----------|
| Compatibilidad D13 | Oficial | Oficial | Incierto | Nativa |
| Costo | Gratis | Pago | Gratis | Gratis |
| Mantiene DBF | Sí | Sí | Sí | No |
| Riesgo | Medio | Bajo | Alto | Medio |
| Soporte | Comunidad | Empresarial | Ninguno | Nativo |
| **Recomendado** | **SÍ** | No | No | No |

### 9.4 Justificación de Tiempos de Migración Halcyon

El tiempo estimado para la migración Halcyon (132-168 horas) se justifica por los siguientes factores:

**1. Sin experiencia previa documentada:**
- No hay patrones conocidos de migración Halcyon → TDbf en el proyecto
- No existe catálogo de bugs o problemas comunes
- Es un territorio completamente nuevo para el equipo

**2. API completamente diferente:**
- Halcyon usa `DatabaseName = 'G:\PROVES'` (directorio)
- TDbf usa `FilePath = 'G:\PROVES\TABLA.DBF'` (archivo específico)
- Halcyon usa `IndexName = 'ICD'` (propiedad simple)
- TDbf usa `IndexDefs.Add('ICD', 'CODIGO')` (configuración en código)
- Cambio de paradigma que requiere reescritura de lógica

**3. Sin automatización:**
- No existen herramientas de conversión automática
- Cada componente requiere revisión manual
- 37 THalcyonDataSet + 40+ TCreateHalcyonDataSet deben migrarse individualmente

**4. Refactorización extensa:**
- TCreateHalcyonDataSet crea tablas dinámicamente → TDbf requiere CreateTable + FieldDefs
- Lógica de índices requiere reescritura completa
- Eventos específicos de Halcyon no tienen equivalente directo

**5. Validación exhaustiva:**
- Cada módulo debe validarse contra archivos DBF originales
- Pruebas de integridad de datos
- Verificación de performance
- Corrección de errores no anticipados

**6. Complejidad mayor que BDE → FireDAC:**
- BDE → FireDAC tenía mapeo directo (TQuery → TFDQuery)
- Halcyon → TDbf es cambio de paradigma completo
- Sin patrones documentados que guíen la migración

**Comparación con migración BDE → FireDAC:**
- BDE → FireDAC: automatización disponible, patrones conocidos, 0.5-1h por componente
- Halcyon → TDbf: sin automatización, sin experiencia previa, 3-4h por componente

Por lo tanto, el tiempo estimado de 132-168 horas es consistente con la complejidad técnica y la falta de experiencia previa.

### 9.5 Desglose de Tiempos de Migración Halcyon

| Fase | Actividad | Horas |
|------|----------|-------|
| Fase 1 | Preparación: Descargar e instalar TDbf, configurar entorno | 4h |
| Fase 2 | Refactorización Traspassos: 28 componentes THalcyonDataSet → TDbf | 32-40h |
| Fase 3 | Refactorización Importacio dades: 1 THalcyonDataSet + 40+ TCreateHalcyonDataSet | 32-40h |
| Fase 4 | Refactorización CodisICD: 5 componentes THalcyonDataSet → TDbf | 24-32h |
| Fase 5 | Validación integral: Pruebas funcionales de cada módulo | 24-32h |
| Fase 6 | Corrección de errores: Ajustes y correcciones tras pruebas | 16-24h |
| **Total** | | **132-168h (16.5-21 jornadas)** |

---

## 10. Justificación de Tiempos

### 10.1 Por qué no es una "simple modificación"

Es importante aclarar que, aunque los evolutivos representan cambios incrementales sobre el código base, la migración a Delphi 13 **no es una simple aplicación de parches** por las siguientes razones:

1. **Migración completa de artefactos:** Cada evolutivo requiere migración integral de todos sus componentes (BDE→FireDAC, TQuery→TFDQuery, propiedades, eventos, conexiones). No se puede aplicar solo la "diferencia" porque el contexto tecnológico cambió completamente.

2. **Units sin counterpart:** 10+ módulos (ClausPas, Codifica, CodisICD, agenda paciente, etc.) no tienen equivalente en el proyecto migrado, por lo que requieren migración completa desde cero, con el mismo esfuerzo que una migración base.

3. **Tecnologías no migradas:** CodisICD usa Halcyon/DBF que no tiene equivalente directo en FireDAC. Esto requiere análisis arquitectónico y decisión de implementación separada.

4. **Integración compleja:** La integración debe preservar el funcionamiento del proyecto base ya migrado. Cualquier cambio en datamodules compartidos puede afectar funcionalidades existentes.

5. **Validación completa:** Cada funcionalidad evolutiva debe validarse funcionalmente contra el exe D6, no solo compilarse. Esto requiere pruebas exhaustivas de los nuevos flujos.

**Analogía:** Migrar evolutivos es como construir una extensión en una casa que ya fue renovada. Aunque la extensión es "nueva", debe integrarse con la renovación existente, respetar los nuevos estándares, y no comprometer la estructura ya construida.

### 10.2 Comparación con Migración Base

La migración base (cursProd) involucró ~300 forms y tomó varios meses. Los evolutivos representan aproximadamente **20-25% del volumen del proyecto base** pero con una complejidad proporcionalmente mayor por:

- Concentración de funcionalidades nuevas en menos archivos
- Tecnologías adicionales no presentes en la base
- Necesidad de integración delicada

El tiempo estimado (304 horas) es **consistente con el esfuerzo proporcional** al alcance real de los evolutivos.

---

## 11. Riesgos y Dependencias

### 11.1 Riesgos Identificados

| Riesgo | Impacto | Probabilidad | Mitigación |
|--------|---------|---------------|-------------|
| Migración Halcyon sin experiencia previa | Alto | Alta | Tratar como proyecto independiente, realizar validación previa |
| Faltan .dfm o .pas en entregas parciales | Medio | Media | Reconstruir desde contraparte o documentar como pendiente |
| Conflictos con proyecto base cursProd | Medio | Baja | Validación exhaustiva en Fase 6-7 |
| Paquetes de terceros no compilados para D13 | Alto | Baja | Verificar en Fase 1, recompilar si necesario |
| Errores de encoding (catalán) | Bajo | Media | Verificar tras cada edición, usar métodos byte-safe |

### 11.2 Dependencias Externas

- **Ejecutables D6 funcionando:** Requeridos para validación visual y funcional
- **Acceso a base de datos de prueba:** Para validación de queries y flujos
- **Framework HaleyVCL recompilado para D13:** Debe estar disponible en máquina IDE
- **Paquetes de terceros (JVCL, EhLib) para D13:** Deben estar instalados
- **Archivos DBF para pruebas:** Requeridos para validación de migración Halcyon

---

## 12. Criterios de Entrega

### 12.1 Criterios de Éxito (Fase 1 - Sin Halcyon)

1. **Compilación:** Todos los proyectos (Admissions, CursClin, nuevos módulos excepto Halcyon) compilan con Build All limpio en Delphi 13
2. **Paridad funcional:** Cada funcionalidad evolutiva se comporta idéntico al exe D6 con los mismos datos
3. **Paridad visual:** Forms, grids, colores y fuentes coinciden con el exe D6
4. **Integración:** El proyecto base (cursProd) continúa funcionando correctamente
5. **Sin crashes:** Cero crashes en los flujos probados
6. **Información completa:** Informe de cambios y pendientes entregado

### 12.2 Criterios de Éxito (Fase 2 - Halcyon)

1. **Compilación:** Módulos Halcyon compilan con TDbf en Delphi 13
2. **Acceso a DBF:** Archivos DBF accesibles y funcionales
3. **Paridad funcional:** Herramientas Halcyon se comportan idéntico a versión D6
4. **Integración:** Integración correcta con base de datos principal
5. **Validación:** Validación contra archivos DBF originales

### 12.3 Pendientes Documentados

Se entregarán documentados explícitamente:
- Componentes/units sin original identificados
- Módulos Halcyon pendientes de migración (en Fase 1)
- Comportamientos heredados del D6 que también existen en D13 (no bugs)
- Decisiones arquitectónicas pendientes de validación del cliente

---

## 13. Recomendaciones

### 13.1 Para el Cliente

1. **Validar el alcance:** Asegurarse de que todos los evolutivos requeridos están incluidos en la entrega de fuentes
2. **Priorizar módulos:** Si el tiempo es crítico, priorizar Admissions y PConfig (tienen counterpart, menor riesgo)
3. **Aprobar estrategia en fases:** Validar que la migración Halcyon como proyecto independiente es aceptable
4. **Disponibilidad de validación:** Tener disponibles ejecutables D6 y entorno de prueba para validación funcional
5. **Decisión sobre Halcyon:** Evaluar si realmente necesita las herramientas Halcyon en Delphi 13 o pueden quedar en D6

### 13.2 Para el Equipo de Desarrollo

1. **Seguir metodología estricta:** Aplicar la metodología de migración documentada y los checklists
2. **Validación continua:** No esperar al final para validar; validar cada fase contra exe D6
3. **Comunicación proactiva:** Reportar bloques o decisiones pendientes inmediatamente
4. **Documentación exhaustiva:** Cada fix debe estar justificado con evidencia del original D6
5. **Validación previa Halcyon:** Antes de comprometer tiempo completo, realizar pruebas de viabilidad con TDbf

---

## 14. Conclusión

La migración de los evolutivos de Delphi 6 a Delphi 13 es un proyecto de **envergadura comparable a una migración parcial**, con un esfuerzo estimado de **304 horas (38 jornadas laborales)** para la migración principal, más **132-168 horas (16.5-21 jornadas)** para la migración de Halcyon como proyecto independiente.

Este esfuerzo está justificado por:
- La necesidad de migrar completamente todos los artefactos proporcionados (no solo diferencias)
- La presencia de módulos sin counterpart que requieren migración desde cero
- Tecnologías adicionales (Halcyon/DBF) que requieren análisis arquitectónico
- La complejidad de integración en el proyecto base ya migrado
- La validación funcional completa requerida para asegurar paridad con el D6
- La falta de experiencia previa en migración Halcyon, que incrementa el riesgo y tiempo

### Tiempos Totales

**Fase 1 - Migración Principal (sin Halcyon): 304 horas (38 jornadas)**

**Fase 2 - Migración Halcyon (proyecto independiente): 132-168 horas (16.5-21 jornadas)**

**Total si se incluye Halcyon: 436-472 horas (54.5-59 jornadas)**

La estrategia recomendada de migración en fases permite:
- Entrega más rápida de funcionalidad principal (38 jornadas)
- Menor riesgo en primera entrega
- Flexibilidad para evaluar si realmente se necesita la migración Halcyon
- Validación incremental y aprendizaje con la migración principal antes de abordar Halcyon

Este estimado contempla la coordinación, comunicación con el cliente, y todas las actividades necesarias para asegurar una entrega de calidad. La metodología probada en la migración base (cursProd) minimiza riesgos y asegura una entrega estable.

---

**Preparado por:** Equipo de Desarrollo  
**Aprobado por:** [Nombre]  
**Fecha:** 8 de octubre de 2026
