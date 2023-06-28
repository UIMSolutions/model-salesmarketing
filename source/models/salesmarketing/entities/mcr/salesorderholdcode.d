
module models.salesmarketing.entities.mcr.salesorderholdcode;

import models.salesmarketing;

<<<<<<< HEAD
class DMCRSalesOrderHoldCodeEntity : DEntity {
=======
@safe:
class  DMCRSalesOrderHoldCodeEntity : DEntity {
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  mixin(EntityThis!("MCRSalesOrderHoldCodeEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
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

version(test_modul_salesmarketing) { unittest {
    assert(MCRSalesOrderHoldCodeEntity);
  
    auto entity = MCRSalesOrderHoldCodeEntity;
  }
}
