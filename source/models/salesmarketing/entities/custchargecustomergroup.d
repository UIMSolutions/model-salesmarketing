module source.models.salesmarketing.entities.custchargecustomergroup;

import models.salesmarketing;

@safe:
class  DCustChargeCustomerGroupEntity : DEntity {
  mixin(EntityThis!("CustChargeCustomerGroupEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "GroupId": StringAttribute, // 		SalesAndMarketing/CustChargeCustomerGroupEntity
        "Description": StringAttribute, // 		SalesAndMarketing/CustChargeCustomerGroupEntity
        "BackingTable_MarkupGroupRelationshipId": StringAttribute, // 		SalesAndMarketing/CustChargeCustomerGroupEntity
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, // 		SalesAndMarketing/CustChargeCustomerGroupEntity
      ])
      .registerPath("salesmarketing.custchargecustomergroup");
  }
}
mixin(EntityCalls!("CustChargeCustomerGroupEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(CustChargeCustomerGroupEntity);
  
    auto entity = CustChargeCustomerGroupEntity;
  }
}
