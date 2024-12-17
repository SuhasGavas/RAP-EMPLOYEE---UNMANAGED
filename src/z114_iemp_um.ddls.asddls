@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface CDS entity for employee - Unmanaged'
@Metadata.ignorePropagatedAnnotations: true
define root view entity z114_iemp_um
  as select from z114_emp_um
  composition [0..*] of z114_iemp_proj_um as _proj
{
  key emp_id                         as EmpId,
      firs_tname                     as FirsTname,
      last_name                      as LastName,
      dob                            as Dob,
      doj                            as Doj,
      location                       as Location,
      created_by                     as CreatedBy,
      created_at                     as CreatedAt,
      last_changed_by                as LastChangedBy,
      last_changed_at                as LastChangedAt,
      local_instance_last_chnaged_at as LocalInstanceLastChnagedAt,
      _proj // Make association public
}
