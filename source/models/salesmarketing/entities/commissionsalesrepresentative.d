module models.salesmarketing.entities.commissionsalesrepresentative;

import models.salesmarketing;

@safe:
class  DCommissionSalesRepresentativeGroupEntity : DEntity {
  mixin(EntityThis!("CommissionSalesRepresentativeGroupEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "groupId": StringAttribute, //		SalesAndMarketing/CommissionSalesRepresentativeGroupEntity
        "groupName": StringAttribute, //		SalesAndMarketing/CommissionSalesRepresentativeGroupEntity
        "backingTable_CommissionSalesGroupRelationshipId": StringAttribute, //		SalesAndMarketing/CommissionSalesRepresentativeGroupEntity
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //		SalesAndMarketing/CommissionSalesRepresentativeGroupEntity      
      ])
      .registerPath("salesmarketing.commissionsalesrepresentative");
  }
}
mixin(EntityCalls!("CommissionSalesRepresentativeGroupEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(CommissionSalesRepresentativeGroupEntity);
  
    auto entity = CommissionSalesRepresentativeGroupEntity;
  }
}
