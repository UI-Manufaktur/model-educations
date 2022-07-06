module models.educations.entities.grants.applicationbusinessprocessflow;

@safe:
import models.educations;

// Base entity for process Grant Application Business Process Flow
class DGrantApplicationBusinessProcessFlowEntity : DOOPEntity {
  mixin(EntityThis!("GrantApplicationBusinessProcessFlowEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, 
        ModifiedOnBehalfByAttribute, 
        StateCodeAttribute,
        StatusCodeAttribute
      ])
      .addValues([ // individual values  
        "businessProcessFlowInstanceId": StringAttribute, //	Unique identifier for entity instances
        "activeStageStartedOn": StringAttribute, //	Date and time when current active stage is started
        "bpf_Duration": StringAttribute, //	Duration of Business Process Flow
        "mshied_GrantapplicantId": StringAttribute, //	
        "name": StringAttribute, //	Description
        "completedOn": StringAttribute, //	Date and time when Business Process Flow instance is completed.
        "importSequenceNumber": StringAttribute, //	Sequence number of the import that created this record.
        "organizationId": StringAttribute, //	Unique identifier for the organization
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.
        "traversedPath": StringAttribute, //	Comma delimited string of process stage ids that represent visited stages of the Business Process Flow instance.
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.
      ])
      .registerPath("education_grants.application.businessprocessflows");
  }
}
mixin(EntityCalls!("GrantApplicationBusinessProcessFlowEntity"));


version(test_model_education) {
  unittest {
    assert(GrantApplicationBusinessProcessFlowEntity);

    auto entity = GrantApplicationBusinessProcessFlowEntity;
  }
}