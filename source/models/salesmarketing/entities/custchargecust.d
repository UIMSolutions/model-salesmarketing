module models.salesmarketing.entities.custchargecust;

@safe:
import models.salesmarketing;

class DCustomerPriorityClassificationGroupEntity : DEntity {
  mixin(EntityThis!("CustomerPriorityClassificationGroupEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "customerPriorityClassificationGroupCode": StringAttribute,
        "backingTable_CustClassificationGroupRelationshipId": UUIDAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("salesmarketing_logistics.locationroles");
  }
}
mixin(EntityCalls!("CustomerPriorityClassificationGroupEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(CustomerPriorityClassificationGroupEntity);
  
    auto entity = CustomerPriorityClassificationGroupEntity;
  }
}
