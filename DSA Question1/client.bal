// AUTO-GENERATED FILE. DO NOT MODIFY.
// This file is auto-generated by the Ballerina OpenAPI tool.

import ballerina/http;

public isolated client class Client {
    final http:Client clientEp;
    # Gets invoked to initialize the `connector`.
    #
    # + config - The configurations to be used when initializing the `connector` 
    # + serviceUrl - URL of the target service 
    # + return - An error if connector initialization failed 
    public isolated function init(ConnectionConfig config =  {}, string serviceUrl = "http://localhost:9090/vle/api/v1") returns error? {
        http:ClientConfiguration httpClientConfig = {httpVersion: config.httpVersion, timeout: config.timeout, forwarded: config.forwarded, poolConfig: config.poolConfig, compression: config.compression, circuitBreaker: config.circuitBreaker, retryConfig: config.retryConfig, validation: config.validation};
        do {
            if config.http1Settings is ClientHttp1Settings {
                ClientHttp1Settings settings = check config.http1Settings.ensureType(ClientHttp1Settings);
                httpClientConfig.http1Settings = {...settings};
            }
            if config.http2Settings is http:ClientHttp2Settings {
                httpClientConfig.http2Settings = check config.http2Settings.ensureType(http:ClientHttp2Settings);
            }
            if config.cache is http:CacheConfig {
                httpClientConfig.cache = check config.cache.ensureType(http:CacheConfig);
            }
            if config.responseLimits is http:ResponseLimitConfigs {
                httpClientConfig.responseLimits = check config.responseLimits.ensureType(http:ResponseLimitConfigs);
            }
            if config.secureSocket is http:ClientSecureSocket {
                httpClientConfig.secureSocket = check config.secureSocket.ensureType(http:ClientSecureSocket);
            }
            if config.proxy is http:ProxyConfig {
                httpClientConfig.proxy = check config.proxy.ensureType(http:ProxyConfig);
            }
        }
        http:Client httpEp = check new (serviceUrl, httpClientConfig);
        self.clientEp = httpEp;
        return;
    }
    # Get a list of all lecturers
    #
    # + return - A list of lecturers 
    resource isolated function get Lecturer() returns Lecturer[]|error {
        string resourcePath = string `/Lecturer`;
        Lecturer[] response = check self.clientEp->get(resourcePath);
        return response;
    }
    # Add a new lecturer
    #
    # + return - Lecturer successfully added 
    resource isolated function post Lecturer(Lecturer payload) returns Lecturer|error {
        string resourcePath = string `/Lecturer`;
        http:Request request = new;
        json jsonBody = payload.toJson();
        request.setPayload(jsonBody, "application/json");
        Lecturer response = check self.clientEp->post(resourcePath, request);
        return response;
    }
    # Retrieve lecturer by staff number
    #
    # + return - Successfully retrieved!! 
    resource isolated function get Lecturer/[string staff_number]() returns Lecturer|error {
        string resourcePath = string `/Lecturer/${getEncodedUri(staff_number)}`;
        Lecturer response = check self.clientEp->get(resourcePath);
        return response;
    }
    # Update an existing lecturer's details
    #
    # + return - Successfully updated!! 
    resource isolated function put Lecturer/[string staff_number](Lecturer payload) returns Lecturer|error {
        string resourcePath = string `/Lecturer/${getEncodedUri(staff_number)}`;
        http:Request request = new;
        json jsonBody = payload.toJson();
        request.setPayload(jsonBody, "application/json");
        Lecturer response = check self.clientEp->put(resourcePath, request);
        return response;
    }
    # Delete lecturer by staff number
    #
    # + return - Lecturer deleted successfully!! 
    resource isolated function delete Lecturer/[int staff_number]() returns http:Response|error {
        string resourcePath = string `/Lecturer/${getEncodedUri(staff_number)}`;
        http:Response response = check self.clientEp-> delete(resourcePath);
        return response;
    }
    # Retrieve all lecturer's that teach the course
    #
    # + return - Successfully retrieved!! 
    resource isolated function get Courses/[string course_code]/Lecturer() returns Lecturer[]|error {
        string resourcePath = string `/Courses/${getEncodedUri(course_code)}/Lecturer`;
        Lecturer[] response = check self.clientEp->get(resourcePath);
        return response;
    }
    # Retrieve all lecturer's that sit in the same office
    #
    # + return - Successfully retrieved!! 
    resource isolated function get offices/[string office_number]/Lecturer() returns Lecturer[]|error {
        string resourcePath = string `/offices/${getEncodedUri(office_number)}/Lecturer`;
        Lecturer[] response = check self.clientEp->get(resourcePath);
        return response;
    }
}
