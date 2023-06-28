module models.salesmarketing.entities.hmim.tunnel;

import models.salesmarketing;

<<<<<<< HEAD
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class  DHMIMTunnelEntity : DEntity {
  mixin(EntityThis!("HMIMTunnelEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "tunnelCode": StringAttribute, //		SalesAndMarketing/HMIMTechnicalNameEntity
        "description": StringAttribute, //		SalesAndMarketing/HMIMTechnicalNameEntity
        "backingTable_HMIMTunelRelationshipId": StringAttribute, //		SalesAndMarketing/HMIMTechnicalNameEntity
      ])
      .registerPath("salesmarketing.hmim.tunnel");
  }
}
mixin(EntityCalls!("HMIMTunnelEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMTunnelEntity);
  
    auto entity = HMIMTunnelEntity;
  }
}
