module models.salesmarketing.entities.customers.priorityclassifications.group;

@safe:
import models.salesmarketing;

class DCustomerPriorityClassificationGroupEntity : DOOPEntity {
  mixin(EntityThis!("CustomerPriorityClassificationGroupEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "CustomerPriorityClassificationGroupCode": StringAttribute,
        "Description": StringAttribute,
        "BackingTable_CustClassificationGroupRelationshipId": UUIDAttribute,
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
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
