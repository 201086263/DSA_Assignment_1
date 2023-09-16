import ballerina/http;

service /lecturer_service on new http:Listener(9090) {
    resource function get .() returns error? {
    }
}
