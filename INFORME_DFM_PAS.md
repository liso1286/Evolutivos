# Informe de Análisis DFM/PAS - Evolutivos

**Fecha:** 8 de octubre de 2026  
**Proyecto:** Guttmann - Evolutivos

---

## Resumen

| Métrica | Cantidad |
|---------|----------|
| Total archivos .dfm | 79 |
| Total archivos .pas | 88 |
| DFM sin PAS correspondiente | 11 |
| PAS sin DFM correspondiente | 20 |
| PAS que necesitan DFM (Forms) | 1 |

---

## DFM sin PAS correspondiente (11 archivos)

Los siguientes archivos .dfm no tienen su correspondiente archivo .pas:

1. `Admissions/Barbara/PrintRtfLogo.dfm`
2. `Admissions/Fitxes/FitxaAmbulancies.dfm`
3. `agenda paciente/agendaimpriu.dfm`
4. `Data/DataCMBD.dfm`
5. `Data/DataConsultesSQL.dfm`
6. `Data/DataEducacio.dfm`
7. `Data/DataEscales.dfm`
8. `Data/DataHl7Log.dfm`
9. `Data/DataOrtesis.dfm`
10. `NovaHCE/HCEListenerAdmissions.dfm`
11. `printselect/Unit3.dfm`

**Análisis:**
- Estos son datamodules o componentes visuales que se entregaron solo con .dfm
- Requieren que el .pas correspondiente sea proporcionado por el cliente o se obtenga de los originales
- Al no tener el .pas, no se puede completar la migración de estos componentes

---

## PAS sin DFM correspondiente (20 archivos)

Los siguientes archivos .pas no tienen su correspondiente archivo .dfm:

### PAS que NO necesitan DFM (19 archivos)

Estos archivos son unidades de código, datamodules o utilidades que no requieren .dfm:

1. `Admissions/Barbara/uEquipAssistencial.pas` - Unidad de código
2. `Admissions/factu/FichaListOrtesis.pas` - Unidad de código
3. `Admissions/Fitxes/FitxaBloqueigLlits.pas` - Unidad de código
4. `Admissions/Fitxes/FitxaGestioPassis.pas` - Unidad de código
5. `Admissions/Fitxes/FitxaLlistatPrestacions.pas` - Unidad de código
6. `Admissions/Llistats/Atesos.pas` - Unidad de código
7. `ClausPas/FitxaAltaClau.pas` - Unidad de código
8. `ClausPas/FitxaBaixaClauNew.pas` - Unidad de código
9. `ClausPas/Main.pas` - Unidad de código
10. `Codifica/DataCoode.pas` - Unidad de código
11. `Data/DataInterCon.pas` - Unidad de código
12. `dicom/cdimport/importacdu.pas` - Unidad de código
13. `ficapdf/mainu.pas` - Unidad de código
14. `SAP/d2007/SOAPGUTT/SOAPGUTTimpl.pas` - Unidad de código
15. `SAP/d6/utils sap d6/OrdreCompra_SAP.pas` - Unidad de código
16. `SAP/d6/utils soap facturacio/utilsSoapFacturacio.pas` - Unidad de código
17. `sqlobert/mainconsultesu.pas` - Unidad de código
18. `Utilitats/winhttp.pas` - Unidad de código
19. `utilitatsd7/utilinueva.pas` - Unidad de código

### PAS que SÍ necesitan DFM (1 archivo) ⚠️

Este archivo es un Form y requiere su correspondiente .dfm:

1. **`Admissions/Fitxes/FitxaHistorial.pas`** - **FORM: NECESITA DFM**

**Detalles:**
- Clase: `TwFitxaHistorial = class(TForm)`
- Contiene componentes visuales: HYPanelConsulta, TPanel, TToolBar, etc.
- Eventos: FormClose, pHistorialAlSeleccionar, etc.
- **Estado:** El .dfm no fue entregado. Debe obtenerse de los originales o solicitarse al cliente.

---

## Recomendaciones

### 1. Para DFM sin PAS (11 archivos)
- **Acción:** Solicitar al cliente los archivos .pas correspondientes
- **Alternativa:** Verificar si existen en `C:\Proyectos\Evolutivos Originales` o `C:\Proyectos\Originales`
- **Impacto:** Sin el .pas no se puede migrar estos componentes

### 2. Para PAS que necesita DFM (1 archivo)
- **Acción:** Solicitar al cliente el archivo `FitxaHistorial.dfm`
- **Alternativa:** Verificar si existe en `C:\Proyectos\Evolutivos Originales` o `C:\Proyectos\Originales`
- **Impacto:** Sin el .dfm no se puede migrar este Form correctamente

### 3. Para PAS sin DFM que no lo necesitan (19 archivos)
- **Acción:** No requiere acción adicional
- **Impacto:** Estos archivos se pueden migrar sin problema

---

## Verificación en Originales

Se recomienda verificar si los archivos faltantes existen en:
- `C:\Proyectos\Evolutivos Originales` (versión D6 congelada del cliente)
- `C:\Proyectos\Originales` (código base completo en Delphi 6)

---

## Conclusión

De los 88 archivos .pas y 79 archivos .dfm entregados:
- **12 archivos faltantes** (11 DFM sin PAS + 1 PAS sin DFM que lo necesita)
- Estos archivos faltantes deben obtenerse antes de iniciar la migración
- La migración no puede completarse sin estos componentes
