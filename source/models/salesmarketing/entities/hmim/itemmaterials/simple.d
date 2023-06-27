module models.salesmarketing.entities.hmim.itemmaterialssimple;

import models.salesmarketing;

@safe:
class  DHMIMItemMaterialSimpleEntity : DEntity {
  mixin(EntityThis!("HMIMItemMaterialSimpleEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "itemId": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "materialCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "materialDescription": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "classGroupCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "shippingPrintText": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "qty": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "multiplier": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "unitOfMeasure": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "packCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "identificationCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "technicalNameCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "tunnelCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "marinePollutant": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "enviroDangerous": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "limitedQty": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "transportCategoryCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "divisionCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "classCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "packingGroupCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "regCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "labelCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "nos": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "stowageCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "iataStar": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "emsCode": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "airType": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "packInstCodePassenger": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "packInstCodeCargo": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "backingTable_HMIMItemMaterialRelationshipId": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntity
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //		SalesAndMarketing/HMIMItemMaterialSimpleEntityationshipId": StringAttribute, //
      ])
      .registerPath("salesmarketing.hmim.itemmaterialssimple");
  }
}
mixin(EntityCalls!("HMIMItemMaterialSimpleEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMItemMaterialSimpleEntity);
  
    auto entity = HMIMItemMaterialSimpleEntity;
  }
}
