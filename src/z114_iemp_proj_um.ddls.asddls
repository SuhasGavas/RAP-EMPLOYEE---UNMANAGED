@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface CDS entity for employee project - Unmanaged'
@Metadata.ignorePropagatedAnnotations: true
define view entity z114_iemp_proj_um as select from z114_emp_proj_um
association to parent z114_iemp_um as _emp
    on $projection.EmpId = _emp.EmpId
{
    key proj_id as ProjId,
    key emp_id as EmpId,
    project_name as ProjectName,
    assignment as Assignment,
    start_date as StartDate,
    end_date as EndDate,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    local_instance_last_chnaged_at as LocalInstanceLastChnagedAt,
    _emp // Make association public
}
