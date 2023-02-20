
module models.salesmarketing.entities.mcr.salesorderholdcode;

@safe:
import models.salesmarketing;

class DMCRSalesOrderHoldCodeEntity : DOOPEntity {
  mixin(EntityThis!("MCRSalesOrderHoldCodeEntity"));
  
  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "salesOrderHoldCode": StringAttribute,
        "associatedSecurityRoleId": UUIDAttribute,
        "associatedSecurityRoleName": StringAttribute,
        "isDefaultSalesOrderHoldCode": BooleanAttribute,
        "isHoldCodeRemovingInventoryReservations": BooleanAttribute,
        "backingTable_MCRHoldCodeTableRelationshipId": UUIDAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("salesmarketing_mcr.salesorderholdcodes");
  }
}
mixin(EntityCalls!("MCRSalesOrderHoldCodeEntity"));

version(test_modul_salesmarketing) {
  unittest {
    assert(MCRSalesOrderHoldCodeEntity);
  
    auto entity = MCRSalesOrderHoldCodeEntity;
  }
}
