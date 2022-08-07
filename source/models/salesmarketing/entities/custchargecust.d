module models.salesmarketing.entities.custchargecust;

@safe:
import models.salesmarketing;

class DCustomerPriorityClassificationGroupEntity : DOOPEntity {
  mixin(EntityThis!("CustomerPriorityClassificationGroupEntity"));
  
  override void initialize() {
    super.initialize;

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

version(test_modul_salesmarketing) {
  unittest {
    assert(CustomerPriorityClassificationGroupEntity);
  
    auto entity = CustomerPriorityClassificationGroupEntity;
  }
}
