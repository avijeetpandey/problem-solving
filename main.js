const x = {
    "member": {
        "id": 12,
        "roleId": 1,
        "systemRole": true,
        "members": [
            "00X6mwXwXDR40cgjlSKoY66KJ8x2",
            "hrW4Xpnw8ZW0LWdhqV2f0YD01Pl1",
            "zieEirthXeRXzbjeIsGUH3saa513"
        ],
        "permissions": {
            "8-2": {
                "resourceId": 8,
                "resourceGroupId": 2,
                "verbId": 2,
                "verb": "post",
                "resourceName": "role-member"
            },
            "8-5": {
                "resourceId": 8,
                "resourceGroupId": 2,
                "verbId": 5,
                "verb": "delete",
                "resourceName": "role-member"
            },
            "7-4": {
                "resourceId": 7,
                "resourceGroupId": null,
                "verbId": 4,
                "verb": "patch",
                "resourceName": "user"
            },
            "6-5": {
                "resourceId": 6,
                "resourceGroupId": null,
                "verbId": 5,
                "verb": "delete",
                "resourceName": "dashboard"
            }
        }
    },
    "collaborator": {
        "id": 13,
        "roleId": 3,
        "systemRole": true,
        "members": [
            "YO4tICTNTHUmOHD2E8xDYTpQAtI3",
            "JCvgN1pkFSYrxnAtOFpDHla3PL72",
            "6gSmk1A88VhXJaLk19DzKWWhPVz2",
            "D6qOoV9czxXJ4IQGLYWSS0zgF5J3",
            "FLwTvnpUzGR7CJbAh19S5ftulBF3",
            "GLAuN4p6NpUkkpQZEU6ImhPSe4o2",
            "5INofqk5DufcT58f6yCFaI0QKuv1",
            "CJRCqHfrxeYf5rlCUhZQpku0VSj1",
            "KWdGEjIrtUNxfE0Hz8oq8hNPbAs1",
            "jP9ncrnjGjgIgrIlDSA62jYQhWf1",
            "Twz5EokAxBYMs9UurGSONcN0c6B2",
            "sd3EOkvTqPcDoyr6TanV1sByZlK2"
        ],
        "permissions": {}
    },
    "admin": {
        "id": 11,
        "roleId": 4,
        "systemRole": true,
        "members": [
            "rM2ZoS5xjUYakQHhAkbkhI3m70x1"
        ],
        "permissions": {
            "5-2": {
                "resourceId": 5,
                "resourceGroupId": 2,
                "verbId": 2,
                "verb": "post",
                "resourceName": "role"
            },
            "5-5": {
                "resourceId": 5,
                "resourceGroupId": 2,
                "verbId": 5,
                "verb": "delete",
                "resourceName": "role"
            },
            "5-4": {
                "resourceId": 5,
                "resourceGroupId": 2,
                "verbId": 4,
                "verb": "patch",
                "resourceName": "role"
            },
            "6-5": {
                "resourceId": 6,
                "resourceGroupId": null,
                "verbId": 5,
                "verb": "delete",
                "resourceName": "dashboard"
            },
            "7-4": {
                "resourceId": 7,
                "resourceGroupId": null,
                "verbId": 4,
                "verb": "patch",
                "resourceName": "user"
            },
            "8-2": {
                "resourceId": 8,
                "resourceGroupId": 2,
                "verbId": 2,
                "verb": "post",
                "resourceName": "role-member"
            },
            "8-5": {
                "resourceId": 8,
                "resourceGroupId": 2,
                "verbId": 5,
                "verb": "delete",
                "resourceName": "role-member"
            },
            "9-3": {
                "resourceId": 9,
                "resourceGroupId": 2,
                "verbId": 3,
                "verb": "put",
                "resourceName": "role-resourcegroup-resource-verb"
            },
            "9-5": {
                "resourceId": 9,
                "resourceGroupId": 2,
                "verbId": 5,
                "verb": "delete",
                "resourceName": "role-resourcegroup-resource-verb"
            }
        }
    },
    "super-admin": {
        "id": 10,
        "roleId": 5,
        "systemRole": true,
        "members": [],
        "permissions": {}
    },
    "ABCD": {
        "id": 49,
        "roleId": 9,
        "systemRole": false,
        "members": [
            "vCr7mIMwIIPtqbHlSA8C2K9aecv2"
        ],
        "permissions": {}
    },
    "new role": {
        "id": 50,
        "roleId": 10,
        "systemRole": false,
        "members": [],
        "permissions": {}
    }
}

Object.keys(x).forEach(key=>{
    console.log(x[key].systemRole)
})