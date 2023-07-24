namespace app.parts;

using { Country } from '@sap/cds/common';
type BusinessKey : String(10);
type SDate : DateTime;
type LText : String(1024);


entity Parts_Header {
  key FehlteilID : String(100);
  MaterialNr : String(100);
  MaterialDesc : LText;
  Fehlteilmenge: Integer;
  FehlteilUnit: BusinessKey;
  Bedarfstermin: SDate;
  Bedarfswerk: BusinessKey;
  Lagerort: BusinessKey;
  Bewertungsart: BusinessKey;
  Warenempfanger: LText;
  Verrechnungsnummer: String(100);
  Fahrzeugnummer: String(100);
  FahrzeugseitCheck: Boolean;
  Fahrzeugseit: SDate;
  Liefertermin: Date;

};