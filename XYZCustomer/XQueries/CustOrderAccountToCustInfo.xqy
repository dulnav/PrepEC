xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns3="urn:xyzbank:cust:schema:account";
(:: import schema at "../../XYZCommon/WSDLs/CustomerAccountService.wsdl" ::)
declare namespace ns1="urn:xyzbank:cust:schema:customer";
(:: import schema at "../../XYZCommon/WSDLs/CustomerService.wsdl" ::)
declare namespace ns2="urn:xyzbank:cust:schema:order";
(:: import schema at "../../XYZCommon/WSDLs/CustomerOrderService.wsdl" ::)

declare variable $varCustomer as element() (:: schema-element(ns1:customer) ::) external;
declare variable $varOrders as element() (:: schema-element(ns2:order_output) ::) external;
declare variable $varAccount as element() (:: schema-element(ns3:account_output) ::) external;

declare function local:getCustomerInfo($varCustomer as element() (:: schema-element(ns1:customer) ::), 
                                       $varOrders as element() (:: schema-element(ns2:order_output) ::), 
                                       $varAccount as element() (:: schema-element(ns3:account_output) ::)) 
                                       as element() (:: schema-element(ns1:migrated_customer) ::) {
    <ns1:migrated_customer/>
};

local:getCustomerInfo($varCustomer, $varOrders, $varAccount)
