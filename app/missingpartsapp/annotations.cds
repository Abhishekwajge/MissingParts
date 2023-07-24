using CatalogService as service from '../../srv/parts_srv';

annotate service.Parts_Header with {
  @Measures.Unit : FehlteilUnit
  Fehlteilmenge
};

annotate service.Parts_Header with {
  @readonly
  MaterialDesc
};

annotate service.Parts_Header with {
  @readonly
  FehlteilUnit
};

annotate service.Parts_Header with @(

    UI.SelectionFields: 
    [FehlteilID 
    ],
    UI.LineItem       : [
        {
            $Type              : 'UI.DataFieldForAction',
            Label              : 'Kopieren',
            Action             : 'Parts_Header/CatalogService.Parts_Header',
            ![@UI.IsCopyAction]: true,
        },

        {
            $Type                : 'UI.DataField',
            Label                : 'Fehlteil-ID',
            Value                : FehlteilID,
            ![@UI.Importance] : #High,
            // ![@HTML5.CssDefaults]: {width: '14rem'},
        },
        {
            $Type: 'UI.DataField',
            Label: 'Material-Nr.',
            Value: MaterialNr,
            ![@UI.Importance] : #High,
            // ![@HTML5.CssDefaults]: {width: '14rem'},
        },
        {
            $Type: 'UI.DataField',
            Label: 'Fehlteilmenge',
            Value: Fehlteilmenge,
            Criticality : Fehlteilmenge,
            CriticalityRepresentation : #WithoutIcon,
            ![@UI.Importance] : #High
        },
        {
            $Type: 'UI.DataField',
            Label: 'Bedarfswerk',
            Value: Bedarfswerk,
            ![@UI.Importance] : #High,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Lagerort',
            Value: Lagerort,
            ![@UI.Importance] : #High,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Voraussichtlicher Liefertermin',
            Value: Liefertermin,
            ![@UI.Importance] : #High,
        },
    ]
);

annotate service.Parts_Header with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Fehlteil-ID',
                Value: FehlteilID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Material-Nr.',
                Value: MaterialNr,
            },
            {
                $Type: 'UI.DataField',
                Label: '',
                Value: MaterialDesc,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Fehlteilmenge',
                Value: Fehlteilmenge,

            },
            {
                $Type: 'UI.DataField',
                Label: 'Bedarfstermin',
                Value: Bedarfstermin,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Bedarfswerk/Lagerort',
                Value: Bedarfswerk,
            },
            {
                $Type: 'UI.DataField',
                Label: '',
                Value: Lagerort,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Bewertungsart',
                Value: Bewertungsart,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Warenempfänger/Bahnhof',
                Value: Warenempfanger,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Verrechnungsnummer',
                Value: Verrechnungsnummer,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Fahrzeugnummer',
                Value: Fahrzeugnummer,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Fahrzeug steht',
                Value: FahrzeugseitCheck,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Fahrzeug steht seit',
                Value: Fahrzeugseit,
            }
        ],
    },
    UI.HeaderInfo : {
        TypeName      : 'MissingPart',
        TypeNamePlural: 'MissingParts',
        Title         : {
            $Type: 'UI.DataField',
            Value: FehlteilID
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: MaterialNr
        }
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'Fehlteil Details',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }]
);
annotate service.Parts_Header with {
    MaterialNr @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Parts_Header',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : MaterialNr,
                    ValueListProperty : 'MaterialNr',
                },
            ],
        },
        Common.ValueListWithFixedValues : true)};
annotate service.Parts_Header with {
    Bedarfswerk @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Parts_Header',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Bedarfswerk,
                    ValueListProperty : 'Bedarfswerk',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Parts_Header with {
    Lagerort @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Parts_Header',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Lagerort,
                    ValueListProperty : 'Lagerort',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Parts_Header with {
    Bewertungsart @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Parts_Header',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Bewertungsart,
                    ValueListProperty : 'Bewertungsart',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Parts_Header with {
    Warenempfanger @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Parts_Header',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Warenempfanger,
                    ValueListProperty : 'Warenempfanger',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Parts_Header with {
    Verrechnungsnummer @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Parts_Header',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Verrechnungsnummer,
                    ValueListProperty : 'Verrechnungsnummer',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
