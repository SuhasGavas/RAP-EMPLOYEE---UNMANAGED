@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection CDS entity for employee project - Unmanaged'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity z114_cemp_proj_um
  as projection on z114_iemp_proj_um
{
  key ProjId,
  key EmpId,
      ProjectName,
      Assignment,
      StartDate,
      EndDate,
      
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
      _emp : redirected to parent z114_cemp_um
}
