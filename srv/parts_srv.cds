using app.parts from '../db/parts';
service CatalogService {

 @odata.draft.enabled
 @Capabilities.Insertable
 @Capabilities.Updatable
 @Capabilities.Deletable

 @requires: 'Admin'
 entity Parts_Header
    as projection on parts.Parts_Header;

entity Parts_Header_Clone
    as projection on parts.Parts_Header;

}