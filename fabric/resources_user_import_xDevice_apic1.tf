resource "aci_rest" "inb_mgmt_apic1" {
	depends_on		= [aci_application_epg.inb_default,aci_rest.oob_mgmt_Out_Ct]
	path		= "/api/node/mo/uni/tn-mgmt.json"
	class_name	= "mgmtRsInBStNode"
	payload		= <<EOF
{
    "mgmtRsInBStNode": {
        "attributes": {
            "dn": "uni/tn-mgmt/mgmtp-default/inb-default/rsinBStNode-[topology/pod-1/node-1]",
            "addr": "198.18.2.11/24",
            "gw": "198.18.2.1",
            "tDn": "topology/pod-1/node-1"
        },
        "children": []
    }
}
	EOF
}

resource "aci_rest" "apic1_port_2_1" {
	depends_on		= [aci_access_port_block.leaf201_1]
	path		= "/api/node/mo/uni/infra/accportprof-leaf201/hports-Eth1-48-typ-range/rsaccBaseGrp.json"
	class_name	= "infraRsAccBaseGrp"
	payload		= <<EOF
{
    "infraRsAccBaseGrp": {
        "attributes": {
            "tDn": "uni/infra/funcprof/accportgrp-inband_apg"
        },
        "children": []
    }
}
	EOF
}

resource "aci_rest" "apic1_port_2_2" {
	depends_on		= [aci_access_port_block.leaf202_1]
	path		= "/api/node/mo/uni/infra/accportprof-leaf202/hports-Eth1-48-typ-range/rsaccBaseGrp.json"
	class_name	= "infraRsAccBaseGrp"
	payload		= <<EOF
{
    "infraRsAccBaseGrp": {
        "attributes": {
            "tDn": "uni/infra/funcprof/accportgrp-inband_apg"
        },
        "children": []
    }
}
	EOF
}

