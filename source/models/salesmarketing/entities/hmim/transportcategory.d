module models.salesmarketing.entities.hmim.transportcategory;

import models.salesmarketing;

@safe:
class  DHMIMTransportCategoryEntity : DEntity {
  mixin(EntityThis!("HMIMTransportCategoryEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "technicalCategoryCode": StringAttribute, //		SalesAndMarketing/HMIMTechnicalNameEntity
        "description": StringAttribute, //		SalesAndMarketing/HMIMTechnicalNameEntity
        "backingTable_HMIMTechnicalNameRelationshipId": StringAttribute, //		SalesAndMarketing/HMIMTechnicalNameEntity
     ])
      .registerPath("salesmarketing_logistics.locationroles");
  }
}
mixin(EntityCalls!("HMIMTransportCategoryEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMTransportCategoryEntity);
  
    auto entity = HMIMTransportCategoryEntity;
  }
}
