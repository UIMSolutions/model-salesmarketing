module models.salesmarketing.entities.hmim.tunnel;

import models.salesmarketing;

@safe:
class  DHMIMTunnelEntity : DEntity {
  mixin(EntityThis!("HMIMTunnelEntity"));
  
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
