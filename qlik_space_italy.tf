resource "restapi_object" "space_Italy" {
    provider = restapi.qlik_saas
    path = "/api/v1/spaces"
    data = jsonencode({
	name: "Italy"
	type: "managed"
	description: "Italy space" })
}

resource "restapi_object" "space_Italy_assigments_group_Developer" {
    provider = restapi.qlik_saas
    path = "/api/v1/spaces/${resource.restapi_object.space_Italy.id}/assignments"
    data =  jsonencode({
	type: "group"
	roles: ["consumer","contributor","dataconsumer","publisher"]
	assigneeId: "${resource.restapi_object.group_Developer.id}"
    })
}

resource "restapi_object" "space_Italy_assigments_group_Italy" {
    provider = restapi.qlik_saas
    path = "/api/v1/spaces/${resource.restapi_object.space_Italy.id}/assignments"
    data =  jsonencode({
	type: "group"
	roles: ["consumer","dataconsumer"]
	assigneeId: "${resource.restapi_object.group_Italy.id}"
    })
}
