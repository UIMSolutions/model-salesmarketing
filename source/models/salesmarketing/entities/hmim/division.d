module models.salesmarketing.entities.hmim.division;

@safe:
import models.salesmarketing;

class DHMIMDivisionEntity : DEntity {
  mixin(EntityThis!("HMIMDivisionEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "divisionCode": StringAttribute, //		SalesAndMarketing/HMIMDivisionEntity
        "description": StringAttribute, //		SalesAndMarketing/HMIMDivisionEntity
        "classCode": StringAttribute, //		SalesAndMarketing/HMIMDivisionEntity
        "backingTable_HMIMDivisionRelationshipId": StringAttribute, //		SalesAndMarketing/HMIMDivisionEntity
      ])
      .registerPath("salesmarketing.hmim.division");
  }
}
mixin(EntityCalls!("HMIMDivisionEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMDivisionEntity);
  
    auto entity = HMIMDivisionEntity;
  }
}
