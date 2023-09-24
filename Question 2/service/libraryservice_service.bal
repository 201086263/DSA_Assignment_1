import ballerina/grpc;

listener grpc:Listener ep = new (9090);

@grpc:ServiceDescriptor {descriptor: ROOT_DESCRIPTOR_LIBRARY, descMap: getDescriptorMapLibrary()}
service "LibraryService" on ep {

    remote function AddBook(AddBookRequest value) returns Response|error {
    }
    remote function UpdateBook(UpdateBookRequest value) returns Response|error {
    }
    remote function RemoveBook(RemoveBookRequest value) returns Response|error {
    }
    remote function ListAvailableBooks(Empty value) returns BookList|error {
    }
    remote function LocateBook(LocateBookRequest value) returns Response|error {
    }
    remote function BorrowBook(BorrowBookRequest value) returns Response|error {
    }
    remote function CreateUsers(stream<CreateUserRequest, grpc:Error?> clientStream) returns Response|error {
    }
}

