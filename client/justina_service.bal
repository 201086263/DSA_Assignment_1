import ballerina/http;

service /justina_service on new http:Listener(9090) {
    resource function get .() returns error? {
    }
}

service /justina_service on new http:Listener(9090) {
    resource function get .() returns error? {
    }
}
