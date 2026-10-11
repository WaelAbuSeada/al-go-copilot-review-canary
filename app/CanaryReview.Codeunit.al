codeunit 50100 "Canary Review"
{
    procedure GetCustomerName(CustomerNo: Code[20]): Text
    var
        Customer: Record Customer;
    begin
        Customer.Get(CustomerNo);
        exit(Customer.Name);
    end;

    procedure ShowEveryCustomer()
    var
        Customer: Record Customer;
    begin
        if Customer.FindSet() then
            repeat
                Message('Customer: %1', Customer.Name);
            until Customer.Next() = 0;
    end;

    procedure DeleteEveryCustomer()
    var
        Customer: Record Customer;
    begin
        Customer.DeleteAll(true);
    end;
}
