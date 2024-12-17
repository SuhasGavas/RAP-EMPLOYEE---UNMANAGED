@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection CDS entity for employee - Unmanaged'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity z114_cemp_um
  as projection on z114_iemp_um
{
  key EmpId,
      FirsTname,
      LastName,
      Dob,
      Doj,
      Location,
      
      @Semantics.user.createdBy: true
      CreatedBy,
      
      @Semantics.systemDateTime.createdAt: true
      CreatedAt,
      
      @Semantics.user.lastChangedBy: true
      LastChangedBy,
      
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalInstanceLastChnagedAt,
      /* Associations */
      _proj : redirected to composition child z114_cemp_proj_um
}
