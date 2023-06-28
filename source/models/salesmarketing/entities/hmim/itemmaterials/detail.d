module models.salesmarketing.entities.hmim.itemmaterials.detail;

import models.salesmarketing;

<<<<<<< HEAD
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class  DHMIMItemMaterialDetailEntity : DEntity {
  mixin(EntityThis!("HMIMItemMaterialDetailEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "itemId": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "materialDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "SshippingPrintText": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "qty": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "multiplier": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "unitOfMeasure": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "packCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "packCodeDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "identificationCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "identificationCodeDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "technicalNameCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "technicalNameCodeDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "tunnelCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "tunnelCodeDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "marinePollutant": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "enviroDangerous": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "limitedQty": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "transportCategoryCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "transportCategoryCodeDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "divisionCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "divisionCodeDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "classCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "classCodeDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "packingGroupCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "packingGroupCodeDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "regCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "labelCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "labelCodeDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "nos": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "stowageCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "stowageCodeDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "iataStar": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "emsCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "emsCodeDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "airType": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "packInstCodePassenger": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "packInstCodePassengerDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "packInstCodeCargo": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "packInstCodeCargoDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "backingTable_HMIMItemMaterialRelationshipId": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialDetailEntity
      ])
      .registerPath("salesmarketing_logistics.locationroles");
  }
}
mixin(EntityCalls!("HMIMItemMaterialDetailEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMItemMaterialDetailEntity);
  
    auto entity = HMIMItemMaterialDetailEntity;
  }
}
