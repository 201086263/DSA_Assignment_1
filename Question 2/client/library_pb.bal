import ballerina/grpc;
import ballerina/protobuf.types.wrappers;

public isolated client class LibraryServiceClient {
    *grpc:AbstractClientEndpoint;

    private final grpc:Client grpcClient;

    public isolated function init(string url, *grpc:ClientConfiguration config) returns grpc:Error? {
        self.grpcClient = check new (url, config);
        check self.grpcClient.initStub(self, ROOT_DESCRIPTOR_LIBRARY, getDescriptorMapLibrary());
    }

    isolated remote function AddBook(AddBookRequest|ContextAddBookRequest req) returns Response|grpc:Error {
        map<string|string[]> headers = {};
        AddBookRequest message;
        if req is ContextAddBookRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("librarySystem.LibraryService/AddBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <Response>result;
    }

    isolated remote function AddBookContext(AddBookRequest|ContextAddBookRequest req) returns ContextResponse|grpc:Error {
        map<string|string[]> headers = {};
        AddBookRequest message;
        if req is ContextAddBookRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("librarySystem.LibraryService/AddBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <Response>result, headers: respHeaders};
    }

    isolated remote function UpdateBook(UpdateBookRequest|ContextUpdateBookRequest req) returns Response|grpc:Error {
        map<string|string[]> headers = {};
        UpdateBookRequest message;
        if req is ContextUpdateBookRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("librarySystem.LibraryService/UpdateBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <Response>result;
    }

    isolated remote function UpdateBookContext(UpdateBookRequest|ContextUpdateBookRequest req) returns ContextResponse|grpc:Error {
        map<string|string[]> headers = {};
        UpdateBookRequest message;
        if req is ContextUpdateBookRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("librarySystem.LibraryService/UpdateBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <Response>result, headers: respHeaders};
    }

    isolated remote function RemoveBook(RemoveBookRequest|ContextRemoveBookRequest req) returns Response|grpc:Error {
        map<string|string[]> headers = {};
        RemoveBookRequest message;
        if req is ContextRemoveBookRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("librarySystem.LibraryService/RemoveBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <Response>result;
    }

    isolated remote function RemoveBookContext(RemoveBookRequest|ContextRemoveBookRequest req) returns ContextResponse|grpc:Error {
        map<string|string[]> headers = {};
        RemoveBookRequest message;
        if req is ContextRemoveBookRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("librarySystem.LibraryService/RemoveBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <Response>result, headers: respHeaders};
    }

    isolated remote function ListAvailableBooks(Empty|ContextEmpty req) returns BookList|grpc:Error {
        map<string|string[]> headers = {};
        Empty message;
        if req is ContextEmpty {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("librarySystem.LibraryService/ListAvailableBooks", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <BookList>result;
    }

    isolated remote function ListAvailableBooksContext(Empty|ContextEmpty req) returns ContextBookList|grpc:Error {
        map<string|string[]> headers = {};
        Empty message;
        if req is ContextEmpty {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("librarySystem.LibraryService/ListAvailableBooks", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <BookList>result, headers: respHeaders};
    }

    isolated remote function LocateBook(LocateBookRequest|ContextLocateBookRequest req) returns Response|grpc:Error {
        map<string|string[]> headers = {};
        LocateBookRequest message;
        if req is ContextLocateBookRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("librarySystem.LibraryService/LocateBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <Response>result;
    }

    isolated remote function LocateBookContext(LocateBookRequest|ContextLocateBookRequest req) returns ContextResponse|grpc:Error {
        map<string|string[]> headers = {};
        LocateBookRequest message;
        if req is ContextLocateBookRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("librarySystem.LibraryService/LocateBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <Response>result, headers: respHeaders};
    }

    isolated remote function BorrowBook(BorrowBookRequest|ContextBorrowBookRequest req) returns Response|grpc:Error {
        map<string|string[]> headers = {};
        BorrowBookRequest message;
        if req is ContextBorrowBookRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("librarySystem.LibraryService/BorrowBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <Response>result;
    }

    isolated remote function BorrowBookContext(BorrowBookRequest|ContextBorrowBookRequest req) returns ContextResponse|grpc:Error {
        map<string|string[]> headers = {};
        BorrowBookRequest message;
        if req is ContextBorrowBookRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("librarySystem.LibraryService/BorrowBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <Response>result, headers: respHeaders};
    }

    isolated remote function CreateUsers() returns CreateUsersStreamingClient|grpc:Error {
        grpc:StreamingClient sClient = check self.grpcClient->executeClientStreaming("librarySystem.LibraryService/CreateUsers");
        return new CreateUsersStreamingClient(sClient);
    }
}

public client class CreateUsersStreamingClient {
    private grpc:StreamingClient sClient;

    isolated function init(grpc:StreamingClient sClient) {
        self.sClient = sClient;
    }

    isolated remote function sendCreateUserRequest(CreateUserRequest message) returns grpc:Error? {
        return self.sClient->send(message);
    }

    isolated remote function sendContextCreateUserRequest(ContextCreateUserRequest message) returns grpc:Error? {
        return self.sClient->send(message);
    }

    isolated remote function receiveResponse() returns Response|grpc:Error? {
        var response = check self.sClient->receive();
        if response is () {
            return response;
        } else {
            [anydata, map<string|string[]>] [payload, _] = response;
            return <Response>payload;
        }
    }

    isolated remote function receiveContextResponse() returns ContextResponse|grpc:Error? {
        var response = check self.sClient->receive();
        if response is () {
            return response;
        } else {
            [anydata, map<string|string[]>] [payload, headers] = response;
            return {content: <Response>payload, headers: headers};
        }
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.sClient->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.sClient->complete();
    }
}

public client class LibraryServiceBookListCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendBookList(BookList response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextBookList(ContextBookList response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class LibraryServiceResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendResponse(Response response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextResponse(ContextResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public type ContextCreateUserRequestStream record {|
    stream<CreateUserRequest, error?> content;
    map<string|string[]> headers;
|};

public type ContextResponse record {|
    Response content;
    map<string|string[]> headers;
|};

public type ContextLocateBookRequest record {|
    LocateBookRequest content;
    map<string|string[]> headers;
|};

public type ContextEmpty record {|
    Empty content;
    map<string|string[]> headers;
|};

public type ContextBookList record {|
    BookList content;
    map<string|string[]> headers;
|};

public type ContextRemoveBookRequest record {|
    RemoveBookRequest content;
    map<string|string[]> headers;
|};

public type ContextUpdateBookRequest record {|
    UpdateBookRequest content;
    map<string|string[]> headers;
|};

public type ContextAddBookRequest record {|
    AddBookRequest content;
    map<string|string[]> headers;
|};

public type ContextBorrowBookRequest record {|
    BorrowBookRequest content;
    map<string|string[]> headers;
|};

public type ContextCreateUserRequest record {|
    CreateUserRequest content;
    map<string|string[]> headers;
|};

public type Response record {|
    StringValue message = {};
    StringValue location = {};
|};

public type LocateBookRequest record {|
    StringValue isbn = {};
|};

public type Empty record {|
|};

public type BookList record {|
    AddBookRequest[] books = [];
|};

public type RemoveBookRequest record {|
    StringValue isbn = {};
|};

public type UpdateBookRequest record {|
    StringValue isbn = {};
    StringValue title = {};
    StringValue author_1 = {};
    StringValue author_2 = {};
    StringValue location = {};
    boolean available = false;
|};

public type AddBookRequest record {|
    Int64Value isbn = {};
    string title = "";
    string author_1 = "";
    string author_2 = "";
    string location = "";
    boolean available = false;
|};

public type BorrowBookRequest record {|
    StringValue user_id = {};
    StringValue isbn = {};
|};

public type CreateUserRequest record {|
    StringValue user_id = {};
    string profile = "";
    StringValue username = {};
|};

const string ROOT_DESCRIPTOR_LIBRARY = "0A0D6C6962726172792E70726F746F120D6C69627261727953797374656D1A1E676F6F676C652F70726F746F6275662F77726170706572732E70726F746F1A1B676F6F676C652F70726F746F6275662F656D7074792E70726F746F22C7010A0E416464426F6F6B52657175657374122F0A046973626E18012001280B321B2E676F6F676C652E70726F746F6275662E496E74363456616C756552046973626E12140A057469746C6518022001280952057469746C6512190A08617574686F725F311803200128095207617574686F723112190A08617574686F725F321804200128095207617574686F7232121A0A086C6F636174696F6E18052001280952086C6F636174696F6E121C0A09617661696C61626C651806200128085209617661696C61626C65229E010A11437265617465557365725265717565737412350A07757365725F696418012001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C7565520675736572496412180A0770726F66696C65180220012809520770726F66696C6512380A08757365726E616D6518032001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C75655208757365726E616D6522C3020A11557064617465426F6F6B5265717565737412300A046973626E18012001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552046973626E12320A057469746C6518022001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552057469746C6512370A08617574686F725F3118032001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C75655207617574686F723112370A08617574686F725F3218042001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C75655207617574686F723212380A086C6F636174696F6E18052001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552086C6F636174696F6E121C0A09617661696C61626C651806200128085209617661696C61626C65227C0A11426F72726F77426F6F6B5265717565737412350A07757365725F696418012001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C7565520675736572496412300A046973626E18022001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552046973626E22450A1152656D6F7665426F6F6B5265717565737412300A046973626E18012001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552046973626E22450A114C6F63617465426F6F6B5265717565737412300A046973626E18012001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552046973626E227C0A08526573706F6E736512360A076D65737361676518012001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552076D65737361676512380A086C6F636174696F6E18022001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552086C6F636174696F6E223F0A08426F6F6B4C69737412330A05626F6F6B7318012003280B321D2E6C69627261727953797374656D2E416464426F6F6B526571756573745205626F6F6B7322070A05456D7074793288040A0E4C6962726172795365727669636512410A07416464426F6F6B121D2E6C69627261727953797374656D2E416464426F6F6B526571756573741A172E6C69627261727953797374656D2E526573706F6E7365124A0A0B437265617465557365727312202E6C69627261727953797374656D2E43726561746555736572526571756573741A172E6C69627261727953797374656D2E526573706F6E7365280112470A0A557064617465426F6F6B12202E6C69627261727953797374656D2E557064617465426F6F6B526571756573741A172E6C69627261727953797374656D2E526573706F6E736512470A0A52656D6F7665426F6F6B12202E6C69627261727953797374656D2E52656D6F7665426F6F6B526571756573741A172E6C69627261727953797374656D2E526573706F6E736512430A124C697374417661696C61626C65426F6F6B7312142E6C69627261727953797374656D2E456D7074791A172E6C69627261727953797374656D2E426F6F6B4C69737412470A0A4C6F63617465426F6F6B12202E6C69627261727953797374656D2E4C6F63617465426F6F6B526571756573741A172E6C69627261727953797374656D2E526573706F6E736512470A0A426F72726F77426F6F6B12202E6C69627261727953797374656D2E426F72726F77426F6F6B526571756573741A172E6C69627261727953797374656D2E526573706F6E7365620670726F746F33";

public isolated function getDescriptorMapLibrary() returns map<string> {
    return {"google/protobuf/empty.proto": "0A1B676F6F676C652F70726F746F6275662F656D7074792E70726F746F120F676F6F676C652E70726F746F62756622070A05456D70747942540A13636F6D2E676F6F676C652E70726F746F627566420A456D70747950726F746F50015A057479706573F80101A20203475042AA021E476F6F676C652E50726F746F6275662E57656C6C4B6E6F776E5479706573620670726F746F33", "google/protobuf/wrappers.proto": "0A1E676F6F676C652F70726F746F6275662F77726170706572732E70726F746F120F676F6F676C652E70726F746F62756622230A0B446F75626C6556616C756512140A0576616C7565180120012801520576616C756522220A0A466C6F617456616C756512140A0576616C7565180120012802520576616C756522220A0A496E74363456616C756512140A0576616C7565180120012803520576616C756522230A0B55496E74363456616C756512140A0576616C7565180120012804520576616C756522220A0A496E74333256616C756512140A0576616C7565180120012805520576616C756522230A0B55496E74333256616C756512140A0576616C756518012001280D520576616C756522210A09426F6F6C56616C756512140A0576616C7565180120012808520576616C756522230A0B537472696E6756616C756512140A0576616C7565180120012809520576616C756522220A0A427974657356616C756512140A0576616C756518012001280C520576616C756542570A13636F6D2E676F6F676C652E70726F746F627566420D577261707065727350726F746F50015A057479706573F80101A20203475042AA021E476F6F676C652E50726F746F6275662E57656C6C4B6E6F776E5479706573620670726F746F33", "library.proto": "0A0D6C6962726172792E70726F746F120D6C69627261727953797374656D1A1E676F6F676C652F70726F746F6275662F77726170706572732E70726F746F1A1B676F6F676C652F70726F746F6275662F656D7074792E70726F746F22C7010A0E416464426F6F6B52657175657374122F0A046973626E18012001280B321B2E676F6F676C652E70726F746F6275662E496E74363456616C756552046973626E12140A057469746C6518022001280952057469746C6512190A08617574686F725F311803200128095207617574686F723112190A08617574686F725F321804200128095207617574686F7232121A0A086C6F636174696F6E18052001280952086C6F636174696F6E121C0A09617661696C61626C651806200128085209617661696C61626C65229E010A11437265617465557365725265717565737412350A07757365725F696418012001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C7565520675736572496412180A0770726F66696C65180220012809520770726F66696C6512380A08757365726E616D6518032001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C75655208757365726E616D6522C3020A11557064617465426F6F6B5265717565737412300A046973626E18012001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552046973626E12320A057469746C6518022001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552057469746C6512370A08617574686F725F3118032001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C75655207617574686F723112370A08617574686F725F3218042001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C75655207617574686F723212380A086C6F636174696F6E18052001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552086C6F636174696F6E121C0A09617661696C61626C651806200128085209617661696C61626C65227C0A11426F72726F77426F6F6B5265717565737412350A07757365725F696418012001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C7565520675736572496412300A046973626E18022001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552046973626E22450A1152656D6F7665426F6F6B5265717565737412300A046973626E18012001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552046973626E22450A114C6F63617465426F6F6B5265717565737412300A046973626E18012001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552046973626E227C0A08526573706F6E736512360A076D65737361676518012001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552076D65737361676512380A086C6F636174696F6E18022001280B321C2E676F6F676C652E70726F746F6275662E537472696E6756616C756552086C6F636174696F6E223F0A08426F6F6B4C69737412330A05626F6F6B7318012003280B321D2E6C69627261727953797374656D2E416464426F6F6B526571756573745205626F6F6B7322070A05456D7074793288040A0E4C6962726172795365727669636512410A07416464426F6F6B121D2E6C69627261727953797374656D2E416464426F6F6B526571756573741A172E6C69627261727953797374656D2E526573706F6E7365124A0A0B437265617465557365727312202E6C69627261727953797374656D2E43726561746555736572526571756573741A172E6C69627261727953797374656D2E526573706F6E7365280112470A0A557064617465426F6F6B12202E6C69627261727953797374656D2E557064617465426F6F6B526571756573741A172E6C69627261727953797374656D2E526573706F6E736512470A0A52656D6F7665426F6F6B12202E6C69627261727953797374656D2E52656D6F7665426F6F6B526571756573741A172E6C69627261727953797374656D2E526573706F6E736512430A124C697374417661696C61626C65426F6F6B7312142E6C69627261727953797374656D2E456D7074791A172E6C69627261727953797374656D2E426F6F6B4C69737412470A0A4C6F63617465426F6F6B12202E6C69627261727953797374656D2E4C6F63617465426F6F6B526571756573741A172E6C69627261727953797374656D2E526573706F6E736512470A0A426F72726F77426F6F6B12202E6C69627261727953797374656D2E426F72726F77426F6F6B526571756573741A172E6C69627261727953797374656D2E526573706F6E7365620670726F746F33"};
}

