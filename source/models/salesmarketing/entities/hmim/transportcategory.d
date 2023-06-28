module models.salesmarketing.entities.hmim.transportcategory;

import models.salesmarketing;

<<<<<<< HEAD
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class  DHMIMTransportCategoryEntity : DEntity {
  mixin(EntityThis!("HMIMTransportCategoryEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  
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
