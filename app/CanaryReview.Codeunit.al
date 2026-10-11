codeunit 50100 "Canary Review"
{
    procedure GetCustomerName(CustomerNo: Code[20]): Text
    var
        Customer: Record Customer;
    begin
        Customer.Get(CustomerNo);
        exit(Customer.Name);
    end;
}
