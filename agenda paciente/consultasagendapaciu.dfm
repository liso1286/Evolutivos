object consultasagendapaci: Tconsultasagendapaci
  Left = 860
  Top = 314
  Width = 798
  Height = 479
  Caption = 'Consultes obertes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object memconvert: TMemoryTable
    Left = 432
    Top = 216
    object memconvertc_historia: TIntegerField
      FieldName = 'c_historia'
    end
    object memconvertnomcomplet: TStringField
      DisplayWidth = 60
      FieldName = 'nomcomplet'
      Size = 60
    end
    object memconvertc_prestacio: TStringField
      FieldName = 'c_prestacio'
      Size = 4
    end
    object memconvertdata_ingres: TDateField
      FieldName = 'data_ingres'
    end
    object memconvertc_planta: TStringField
      FieldName = 'c_planta'
      Size = 15
    end
    object memconvertc_llit: TStringField
      FieldName = 'c_llit'
      Size = 3
    end
    object memconvertc_activitat: TStringField
      FieldName = 'c_activitat'
      Size = 15
    end
    object memconvertc_coordinador: TStringField
      FieldName = 'c_coordinador'
      Size = 5
    end
    object memconvertmetge: TStringField
      FieldName = 'metge'
    end
    object memconvertc_infermeria: TStringField
      FieldName = 'c_infermeria'
      Size = 5
    end
    object memconvertinfermera: TStringField
      FieldName = 'infermera'
    end
    object memconvertc_fisioterapeuta: TStringField
      FieldName = 'c_fisioterapeuta'
      Size = 5
    end
    object memconvertfisioterapeuta: TStringField
      FieldName = 'fisioterapeuta'
    end
    object memconvertc_terapeuta: TStringField
      FieldName = 'c_terapeuta'
      Size = 5
    end
    object memconvertterapeuta: TStringField
      FieldName = 'terapeuta'
    end
    object memconvertc_mef: TStringField
      FieldName = 'c_mef'
      Size = 5
    end
    object memconvertmef: TStringField
      FieldName = 'mef'
    end
    object memconvertc_psicoleg: TStringField
      FieldName = 'c_psicoleg'
      Size = 5
    end
    object memconvertpsicoleg: TStringField
      FieldName = 'psicoleg'
    end
    object memconvertc_trevallsocial: TStringField
      FieldName = 'c_trevallsocial'
      Size = 5
    end
    object memconverttrevallsocial: TStringField
      FieldName = 'trevallsocial'
    end
    object memconvertlunes: TStringField
      DisplayWidth = 1500
      FieldName = 'lunes'
      Size = 1500
    end
    object memconvertmartes: TStringField
      DisplayWidth = 1500
      FieldName = 'martes'
      Size = 1500
    end
    object memconvertmiercoles: TStringField
      DisplayWidth = 1500
      FieldName = 'miercoles'
      Size = 1500
    end
    object memconvertjueves: TStringField
      DisplayWidth = 1500
      FieldName = 'jueves'
      Size = 1500
    end
    object memconvertviernes: TStringField
      DisplayWidth = 1500
      FieldName = 'viernes'
      Size = 1500
    end
    object memconvertsabado: TStringField
      DisplayWidth = 1500
      FieldName = 'sabado'
      Size = 1500
    end
    object memconvertdomingo: TStringField
      DisplayWidth = 1500
      FieldName = 'domingo'
      Size = 1500
    end
  end
  object Query1: TQuery
    Left = 320
    Top = 40
  end
end
