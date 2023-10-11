resource "restapi_object" "group_Developer" {
    provider = restapi.qlik_saas
    path = "/api/v1/groups"
    data = jsonencode({
        name: "Developer"
        status: "active"
        assignedRoles: []})
}

resource "restapi_object" "group_Italy" {
    provider = restapi.qlik_saas
    path = "/api/v1/groups"
    data = jsonencode({
        name: "Italy"
        status: "active"
        assignedRoles: []})
}
