# openapi_client

OpenapiClient - the Ruby gem for the sevdesk API

<b>Contact:</b> To contact our support click  <a href='https://landing.sevdesk.de/service-support-center-technik'>here</a><br><br> 
# General information
Welcome to our API!<br>
sevdesk offers you  the possibility of retrieving data using an interface, namely the sevdesk API, and making  changes without having to use the web UI. The sevdesk interface is a REST-Full API. All sevdesk  data and functions that are used in the web UI can also be controlled through the API.

# Cross-Origin Resource Sharing
This API features Cross-Origin Resource Sharing (CORS).<br>
It enables cross-domain communication from the browser.<br>
All responses have a wildcard same-origin which makes them completely public and accessible to everyone, including any code on any site.

# Embedding resources
When retrieving resources by using this API, you might encounter nested resources in the resources you requested.<br>
For example, an invoice always contains a contact, of which you can see the ID and the object name.<br>
This API gives you the possibility to embed these resources completely into the resources you originally requested.<br>
Taking our invoice example, this would mean, that you would not only see the ID and object name of a contact, but rather the complete contact resource.

To embed resources, all you need to do is to add the query parameter 'embed' to your GET request.<br>
As values, you can provide the name of the nested resource.<br>
Multiple nested resources are also possible by providing multiple names, separated by a comma.
 
# Authentication and Authorization
 The sevdesk API uses a token authentication to authorize calls. For this purpose every sevdesk administrator has one API token, which is a <b>hexadecimal string</b>  containing <b>32 characters</b>. The following clip shows where you can find the  API token if this is your first time with our API.<br><br> <video src='openAPI/img/findingTheApiToken.mp4' controls width='640' height='360'> Your browser cannot play this video.<br> This video explains how to find your sevDesk API token. </video> <br> The token will be needed in every request that you want to send and needs to be provided as a value of an <b>Authorization Header</b>.<br> In this case, we used some random API token. The example shows the token in the Authorization Header. <ul> <li>\"Authorization\" :<span style='color:red'>\"b7794de0085f5cd00560f160f290af38\"</span></li> </ul> The api tokens have an infinite lifetime and, in other words, exist as long as the sevdesk user exists.<br> For this reason, the user should <b>NEVER</b> be deleted.<br> If really necessary, it is advisable to save the api token as we will <b>NOT</b> be able to retrieve it afterwards!<br> It is also possible to generate a new API token, for example, if you want to prevent the usage of your sevdesk account by other people who got your current API token.<br> To achieve this, you just need to click on the \"generate new\" symbol to the right of your token and confirm it with your password. 
# API News
 To never miss API news and updates again, subscribe to our <b>free API newsletter</b> and get all relevant  information to keep your sevdesk software running smoothly. To subscribe, simply click <a href = 'https://landing.sevdesk.de/api-newsletter'><b>here</b></a> and confirm the email address to which we may send all updates relevant to you. 
# API Requests
 In our case, REST API requests need to be build by combining the following components. <table> <tr> <th><b>Component</b></th> <th><b>Description</b></th> </tr> <tr> <td>HTTP-Methods</td> <td> <ul> <li>GET (retrieve a resource)</li> <li>POST (create a resource)</li> <li>PUT (update a resource)</li> <li>DELETE (delete a resource)</li> </ul> </td> </tr> <tr> <td>URL of the API</td> <td><span style='color: #2aa198'>ht</span><span style='color: #2aa198'>tps://my.sevdesk.de/api/v1</span></td> </tr> <tr> <td>URI of the resource</td> <td>The resource to query.<br>For example contacts in sevdesk:<br><br> <span style='color:red'>/Contact</span><br><br> Which will result in the following complete URL:<br><br> <span style='color: #2aa198'>ht</span><span style='color: #2aa198'>tps://my.sevdesk.de/api/v1</span><span style='color:red'>/Contact</span> </td> </tr> <tr> <td>Query parameters</td> <td>Are attached by using the connectives <b>?</b> and <b>&</b> in the URL.<br></td> </tr> <tr> <td>Request headers</td> <td>Typical request headers are for example:<br> <div> <br> <ul> <li>Content-type</li> <li>Authorization</li> <li>Accept-Encoding</li> <li>User-Agent</li> <li>X-Version: Used for resource versioning see information below</li> <li>...</li> </ul> </div> </td> </tr> <tr>  <td>Response headers</td> <td> Typical response headers are for example:<br><br> <div> <ul>  <li>Deprecation: If a resource is deprecated we return true or a timestamp since when</li> <li>...</li> </ul> </div> </td> </tr> <tr> <td>Request body</td> <td>Mostly required in POST and PUT requests.<br> Often the request body contains json, in our case, it also accepts url-encoded data. </td> </tr> </table><br> <span style='color:red'>Note</span>: please pass a meaningful entry at the header \"User-Agent\".  If the \"User-Agent\" is set meaningfully, we can offer better support in case of queries from customers.<br> An example how such a \"User-Agent\" can look like: \"Integration-name by abc\". <br><br> This is a sample request for retrieving existing contacts in sevdesk using curl:<br><br> <img src='openAPI/img/GETRequest.PNG' alt='Get Request' height='150'><br><br> As you can see, the request contains all the components mentioned above.<br> It's HTTP method is GET, it has a correct endpoint  (<span style='color: #2aa198'>ht</span><span style='color: #2aa198'>tps://my.sevdesk.de/api/v1</span><span style='color:red'>/Contact</span>), query parameters and additional <b>header</b> information!<br><br> <b>Query Parameters</b><br><br> As you might have seen in the sample request above, there are several query parameters located in the url.<br> Those are mostly optional but prove to be very useful for a lot of requests as they can limit, extend, sort or filter the data you will get as a response.<br><br> These are the most used query parameter for the sevdesk API. <table> <tr> <th><b>Parameter</b></th> <th><b>Description</b></th> </tr> <tr> <td>embed</td> <td>Will extend some of the returned data.<br> A brief example can be found below.</td> </tr> <tr> <td>countAll</td> <td>\"countAll=true\" returns the number of items</td> </tr> </table> This is an example for the usage of the embed parameter.<br> The following first request will return all company contact entries in sevdesk up to a limit of 100 without any additional information and no offset.<br><br> <img src='openAPI/img/ContactQueryWithoutEmbed.PNG' width='900' height='850'><br><br> Now have a look at the category attribute located in the response.<br> Naturally, it just contains the id and the object name of the object but no further information.<br> We will now use the parameter embed with the value \"category\".<br><br> <img src='openAPI/img/ContactQueryWithEmbed.PNG' width='900' height='850'><br><br> As you can see, the category object is now extended and shows all the attributes and their corresponding values.<br><br> There are lot of other query parameters that can be used to filter the returned data for objects that match a certain pattern, however, those will not be mentioned here and instead can be found at the detail documentation of the most used API endpoints like contact, invoice or voucher.<br><br>
<b>Pagination</b><br> <table> <tr> <th><b>Parameter</b></th> <th><b>Description</b></th> </tr> <tr> <td>limit</td> <td>Limits the number of entries that are returned.<br> Most useful in GET requests which will most likely deliver big sets of data like country or currency lists.<br> In this case, you can bypass the default limitation on returned entries by providing a high number. </td> </tr> <tr> <td>offset</td> <td>Specifies a certain offset for the data that will be returned.<br> As an example, you can specify \"offset=2\" if you want all entries except for the first two.</td> </tr> </table> Example: <ul><li><code>ht<span>tps://my.sevdesk.de/api/v1/Invoice?offset=20&limit=10<span></code></li></ul> <b>Request Headers</b><br><br> The HTTP request (response) headers allow the client as well as the server to pass additional information with the request.<br> They transfer the parameters and arguments which are important for transmitting data over HTTP.<br> Three headers which are useful / necessary when using the sevdesk API are \"Authorization, \"Accept\" and  \"Content-type\".<br> Underneath is a brief description of why and how they should be used.<br><br> <b>Authorization</b><br><br> Should be used to provide your API token in the header. <ul> <li>Authorization:<span style='color:red'>yourApiToken</span></li> </ul> <b>Accept</b><br><br> Specifies the format of the response.<br> Required for operations with a response body. <ul> <li>Accept:application/<span style='color:red'>format</span> </li> </ul> In our case, <code><span style='color:red'>format</span></code> could be replaced with <code>json</code> or <code>xml</code><br><br> <b>Content-type</b><br><br> Specifies which format is used in the request.<br> Is required for operations with a request body. <ul> <li>Content-type:application/<span style='color:red'>format</span></li> </ul> In our case,<code><span style='color:red'>format</span></code>could be replaced with <code>json</code> or <code>x-www-form-urlencoded</code> <br><br><b>API Responses</b><br><br> HTTP status codes<br> When calling the sevdesk API it is very likely that you will get a HTTP status code in the response.<br> Some API calls will also return JSON response bodies which will contain information about the resource.<br> Each status code which is returned will either be a <b>success</b> code or an <b>error</b> code.<br><br> Success codes <table> <tr> <th><b>Status code</b></th> <th><b>Description</b></th> </tr> <tr> <td><code>200 OK</code></td> <td>The request was successful</td> </tr> <tr> <td><code>201 Created</code></td> <td>Most likely to be found in the response of a <b>POST</b> request.<br> This code indicates that the desired resource was successfully created.</td> </tr> </table> <br>Error codes <table> <tr> <th><b>Status code</b></th> <th><b>Description</b></th> </tr> <tr> <td><code>400 Bad request</code></td> <td>The request you sent is most likely syntactically incorrect.<br> You should check if the parameters in the request body or the url are correct.</td> </tr> <tr> <td><code>401 Unauthorized</code></td> <td>The authentication failed.<br> Most likely caused by a missing or wrong API token.</td> </tr> <tr> <td><code>403 Forbidden</code></td> <td>You do not have the permission the access the resource which is requested.</td> </tr> <tr> <td><code>404 Not found</code></td> <td>The resource you specified does not exist.</td> </tr> <tr> <td><code>500 Internal server error</code></td> <td>An internal server error has occurred.<br> Normally this means that something went wrong on our side.<br> However, sometimes this error will appear if we missed to catch an error which is normally a 400 status code! </td> </tr> </table> <br><br> <b>Resource Versioning</b> <br><br> We use resource versioning to handle breaking changes for our endpoints, these are rarely used and will be communicated before we remove older versions.<br> To call a different version we use a specific header <code>X-Version</code> that should be filled with the desired version.<br> <ul>  <li>If you do not specify any version we assume <code>default</code></li> <li>If you specify a version that does not exist or was removed, you will get an error with information which versions are available</li> </ul> <table> <tr> <th>X-Version</th> <th>Description</th> </tr> <tr> <td><code>default</code></td> <td>Should always reference the oldest version.<br> If a specific resource is updated with a new version, <br> then the default version stays the same until the old version is deleted</td> </tr> <tr> <td><code>1.0</code> ... <code>1.9</code></td> <td>Our incrementally version for each resource independent<br> <b>Important</b>: A resource can be available via <code>default</code> but not <code>1.0</code></td> </tr> </table> 
# Your First Request
 After reading the introduction to our API, you should now be able to make your first call.<br> For testing our API, we would always recommend to create a trial account for sevdesk to prevent unwanted changes to your main account.<br> A trial account will be in the highest tariff (materials management), so every sevdesk function can be tested! 

To start testing we would recommend one of the following tools: <ul> <li><a href='https://www.getpostman.com/'>Postman</a></li> <li><a href='https://curl.haxx.se/download.html'>cURL</a></li> </ul> This example will illustrate your first request, which is creating a new Contact in sevdesk.<br> <ol> <li>Download <a href='https://www.getpostman.com/'><b>Postman</b></a> for your desired system and start the application</li> <li>Enter <span><b>ht</span>tps://my.sevdesk.de/api/v1/Contact</b> as the url</li> <li>Create an authorization header and insert your API token as the value</li> <li>For this test, select <b>POST</b> as the HTTP method</li> <li>Go to <b>Headers</b> and enter the key-value pair <b>Content-type</b> + <b>application/x-www-form-urlencoded</b><br> As an alternative, you can just go to <b>Body</b> and select <b>x-www-form-urlencoded</b></li> <li>Now go to <b>Body</b> (if you are not there yet) and enter the key-value pairs as shown in the following picture<br><br> <img src='openAPI/img/FirstRequestPostman.PNG' width='900'><br><br></li> <li>Click on <b>Send</b>. Your response should now look like this:<br><br> <img src='openAPI/img/FirstRequestResponse.PNG' width='900'></li> </ol> As you can see, a successful response in this case returns a JSON-formatted response body containing the contact you just created.<br> For keeping it simple, this was only a minimal example of creating a contact.<br> There are however numerous combinations of parameters that you can provide which add information to your contact. 
# sevdesk-Update 2.0
 Started in 2024 we introduced a new era of bookkeeping in sevdesk. You can check if you already received the update by clicking on your profile in the top right in the sevdesk WebApp or by using the [Tools/bookkeepingSystemVersion endpoint](#tag/Basics/operation/bookkeepingSystemVersion).<br> The old version will be available for some customers until the end of 2024. In this short list we have outlined the changed endpoints with links to jump to the descriptions. If you received the [api newsletter](https://landing.sevdesk.de/api-newsletter) you already know what changed. Otherwise you can check the api changes [here](https://tech.sevdesk.com/api_news/posts/2024_04_04-system-update-breaking-changes/). 
## Check your bookkeeping system version
 With this endpoint you can check which version you / your client uses. On that basis you must use the old or new versions of the endpoints. [Tools/bookkeepingSystemVersion Endpoint](#tag/Basics/operation/bookkeepingSystemVersion) 
## Tax Rules
 <I><b>(affects the properties taxType and taxSet)</b></I><br> With sevdesk-Update 2.0 we changed the available tax rules. Due to a high likeliness of non-compliant accounting, we won't support the following tax type with the sevdesk-Update 2.0 anymore:
 `taxType = custom (this includes 'taxSet': ... )`
 If you only use <code>taxType = default</code>, <code>taxType = eu</code> and / or <code>taxType = ss</code>, these tax types will automatically be mapped to the new tax rules for a transition period, but you have to make sure the taxRate used in positions is within the allowed ones (you may use the [ReceiptGuidance endpoint](#tag/Voucher/operation/forAllAccounts) for that), otherwise the API will return a validation error (HTTP status code 422). For [orders](#tag/Order), [invoices](#tag/Invoice), [vouchers](#tag/Voucher) and [credit notes](#tag/CreditNote) that were created within sevdesk-Update 2.0 the response will change in all endpoints in which these objects are returned.<br> So orders, invoices, vouchers and credit notes created within sevdesk system version 1.0 still have a taxType in the response. When they are created in sevdesk-Update 2.0 they will have a taxRule instead.<br> You can continue to use taxType at first, but we recommend switching to taxRule as there are new options available that were not previously supported.<br> For orders, invoices, vouchers and credit notes that were created within sevdesk-Update 2.0 the response will change in all endpoints in which these objects are returned. This documentation holds the most current version of the endpoints.<br> Here are lists of the currently available tax rules, sorted by their use case, structured into revenue/expense and 'Regelbesteuerer'/'Kleinunternehmer'. 
#### VAT rules for 'Regelbesteuerung' in sevdesk-Update 2.0 (Revenue)
 <table> <tr> <th>VAT Rule</th> <th>New Property</th> <th>Allowed taxRate in positions</th> <th>Old property (deprecated)</th> </tr> <tr> <td>Umsatzsteuerpflichtige Umsätze</td> <td><code>'taxRule': 1</code></td> <td> <ul> <li>0.0</li> <li>7.0</li> <li>19.0</li> </ul> </td> <td><code>'taxType': 'default'</code></td> </tr> <tr> <td>Ausfuhren</td> <td><code>'taxRule': 2</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Innergemeinschaftliche Lieferungen</td> <td><code>'taxRule': 3</code></td> <td> <ul> <li>0.0</li> <li>7.0</li> <li>19.0</li> </ul> </td> <td><code>'taxType': 'eu'</code></td> </tr> <tr> <td>Steuerfreie Umsätze §4 UStG</td> <td><code>'taxRule': 4</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Reverse Charge gem. §13b UStG</td> <td><code>'taxRule': 5</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td> Nicht im Inland steuerbare Leistung<br> Not available for: <ul> <li>advance invoice (<code>invoiceType': 'AR'</code>)</li> <li>partial invoice (<code>'invoiceType': 'TR'</code>)</li> <li>final invoice (<code>'invoiceType': 'ER'</code>)</li> </ul> </td> <td><code>'taxRule': 17</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td><code>'taxType': 'noteu'</code></td> </tr> </table> 
 
#### VAT rules for 'Regelbesteuerung' in sevdesk-Update 2.0 (Expense)
 <table> <tr> <th>VAT Rule</th> <th>New Property</th> <th>Allowed taxRate in positions</th> <th>Old property (deprecated)</th> </tr> <tr> <td>Innergemeinschaftliche Erwerbe</td> <td><code>'taxRule': 8</code></td> <td> <ul> <li>0.0</li> <li>7.0</li> <li>19.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Vorsteuerabziehbare Aufwendungen</td> <td><code>'taxRule': 9</code></td> <td> <ul> <li>0.0</li> <li>7.0</li> <li>19.0</li> </ul> </td> <td><code>'taxType': 'default'</code></td> </tr> <tr> <td>Nicht vorsteuerabziehbare Aufwendungen</td> <td><code>'taxRule': 10</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Reverse Charge gem. §13b Abs. 2 UStG mit Vorsteuerabzug 0% (19%)</td> <td><code>'taxRule': 12</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Reverse Charge gem. §13b UStG ohne Vorsteuerabzug 0% (19%)</td> <td><code>'taxRule': 13</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Reverse Charge gem. §13b Abs. 1 EU Umsätze 0% (19%)</td> <td><code>'taxRule': 14</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> </table> 
 
#### VAT rules for small business owner ('Kleinunternehmer') in sevdesk-Update 2.0 (Revenue)
 <table> <tr> <th>VAT Rule</th> <th>New Property</th> <th>Allowed taxRate in positions</th> <th>Old property (deprecated)</th> </tr> <tr> <td>Steuer nicht erhoben nach §19UStG</td> <td><code>'taxRule': 11</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td><code>'taxType': 'ss'</code></td> </tr> </table> 
 
#### VAT rules for small business owner ('Kleinunternehmer') in sevdesk-Update 2.0 (Expense)
 <table> <tr> <th>VAT Rule</th> <th>New Property</th> <th>Allowed taxRate in positions</th> <th>Old property (deprecated)</th> </tr> <tr> <td>Nicht vorsteuerabziehbare Aufwendungen</td> <td><code>'taxRule': 10</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td><code>'taxType': 'ss'</code></td> </tr> <tr> <td>Reverse Charge gem. §13b UStG ohne Vorsteuerabzug 0% (19%)</td> <td><code>'taxRule': 13</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> </table> 
 
## Booking Accounts
 <I><b>(affects the property accountingType)</b></I><br> With sevdesk-Update 2.0 we changed the available booking accounts and their combinatorics. If you use accountingTypes with SKR numbers that are still available in our receipt guidance, you do not have to change anything in your requests. These booking accounts will automatically be mapped to the new representation (Account Datev). But you have to make sure the taxRate used in positions and taxRule used in the voucher is within the allowed ones (check the [ReceiptGuidance](#tag/Voucher/operation/forAllAccounts)) of the provided booking account, otherwise the API will return a validation error (HTTP status code 422). For orders, invoices, vouchers and credit notes in that were created within sevdesk-Update 2.0 the response will change in all endpoints were these objects are returned. 
## Receipt Guidance
 To help you decide which account can be used in conjunction with which tax rules, tax rates and documents, we created several guidance endpoints just there for you to get helpful information. You can find the descriptions in the changes section for Vouchers below or jump directly to the endpoint description by using this link: [Receipt Guidance](#tag/Voucher/operation/forAllAccounts).<br> Receipt Guidance is planned to give you guidance in which account you can pick (depending on your filter criteria and the client settings (e.g. 'Kleinunternehmer')) and which tax rate and [tax rules](#section/sevdesk-Update-2.0/Tax-Rules) are comptaible with them.  
## Vouchers
 
### Saving a new voucher ([Voucher/Factory/saveVoucher](#tag/Voucher/operation/voucherFactorySaveVoucher))
 Following use cases do not work anymore or have changed: <ol> <li>Custom vat regulations (taxType = custom and provided taxSet)</li> <li>Only specific tax rates and booking accounts are available. Check [ReceiptGuidance](#tag/Voucher/operation/forAllAccounts)</li> <li>Custom accounting types do not work anymore</li> <li>Using an asset booking account without creating an asset is no longer possible</li> <li>A voucher can not be directly set to paid anymore, therefore only status <code>DRAFT (50)</code> or <code>UNPAID / DUE (100)</code> are possible when creating a new voucher. Use the [/api/v1/Voucher/{voucherId}/bookAmount endpoint](#tag/Voucher/operation/bookVoucher) to set a voucher to paid</li> <li>Setting or changing the property enshrined. Use our new endpoint [/api/v1/Voucher/{voucherId}/enshrine](#tag/Voucher/operation/voucherEnshrine) to enshrine a voucher</li> </ol> 
### Get or update an existing voucher ([Voucher/{voucherId}](#tag/Voucher/operation/updateVoucher))
 Following use cases do not work anymore or have changed: <ol> <li>Custom vat regulations (taxType = custom and provided taxSet)</li> <li>See [ReceiptGuidance](#tag/Voucher/operation/forAllAccounts) to check which tax rates are available in conjunction with which tax rules</li> </ol> 
### Book a voucher ([Voucher/{voucherId}](#tag/Voucher/operation/bookVoucher))
 Following use cases do not work anymore or have changed: <ol> <li>Voucher with negative voucher positions can not use 'cash discount' as a payment difference anymore</li> <li>A Voucher can only be booked when it was registered beforehand (see above)</li> <li>Based on the combination of voucher positions some payment difference reasons are not possible anymore</li> <li>The currency fluctuation (CF) type is no longer supported as a payment difference reason</li> </ol> 
## Banking
 Following use cases do not work anymore or have changed: <ol> <li>Setting or changing the property enshrined will now only be available by using the [appropriate enshrine endpoint](#tag/CheckAccountTransaction/operation/checkAccountTransactionEnshrine)</li> </ol> 
## Invoicing
 The changes to the vat rules also apply here. Check the documentation of voucher above as the changes are the same. 
### General stricter validation in PUT and POST endpoints
 We added stricter validation to ensure only correct invoices are created which than can be further processed in sevdesk. Following use cases do not work anymore or have changed: <ol> <li>Creating an invoice with taxType <code>custom</code> does not work anymore</li> <li>Processing an invoice beyond status <code>DRAFT (100)</code> without a contact does not work anymore</li> <li>Advanced invoices (<code>invoiceType: 'AR'</code>) and partial invoices (<code>invoiceType: 'TR'</code>) can only be created with the tax rule 'Umsatzsteuerpflichtige Umsätze (taxRule: 1)'(for Regelbesteuerer) or 'Steuer nicht erhoben nach §19 UStG (taxRule: 11)'(for Kleinunternehmer)</li> <li>Creating a dunning (<code>invoiceType: 'MA'</code>) with the value of property <code>reminderCharge</code> greater than 0 does not work anymore</li> <li>Creating an advanced invoice (<code>invoiceType: 'AR'</code>), a partial invoice (<code>invoiceType: 'TR'</code>) or a final invoice (<code>invoiceType: 'ER'</code>) with a currency deviating from the clients <code>defaultCurrency</code> is not possible anymore</li> <li>Changing the status manually does not work anymore (see 'Removed endpoint /Invoice/{invoiceId}/changeStatus' below)</li> <li>Enshrining now has to be done by using the [enshrine endpoint](#tag/Invoice/operation/invoiceEnshrine) (see below)</li> </ol> 
### Saving an invoice ([Invoice/Factory/saveInvoice](#tag/Invoice/operation/createInvoiceByFactory))
 Following use cases do not work anymore or have changed: <ol> <li>Invoices can only be created with the status <code>DRAFT (100)</code> and can not be changed manually. Use the matching endpoints (e.g. [sendViaEmail](#tag/Invoice/operation/sendInvoiceViaEMail)) to automatically change the status accordingly</li> <li>Setting or changing the property <code>enshrined</code> is now only possible by using the [enshrine endpoint](#tag/CheckAccountTransaction/operation/checkAccountTransactionEnshrine)</li> </ol> 
### Using an order to create an invoice ([Invoice/Factory/createInvoiceFromOrder](#tag/Invoice/operation/createInvoiceFromOrder))
 Following use cases do not work anymore or have changed: <ol> <li>Creating a final invoice (partialType: 'ER') is not possible if an advanced invoice (partialType: 'AR') or partial invoice (partialType: 'TR') exists. This functionality will be added in a later update</li> </ol> 
### Removed endpoint /Invoice/{invoiceId}/changeStatus
 This endpoint will be completely removed (including sevdesk system version 1.0!). Using these endpoints will automatically change the status accordingly: <ul> <li>[Invoice/{invoiceId}/sendViaEmail](#tag/Invoice/operation/sendInvoiceViaEMail)</li> <li>[Invoice/{invoiceId}/sendBy](#tag/Invoice/operation/invoiceSendBy)</li> <li>[Invoice/{invoiceId}/bookAmount](#tag/Invoice/operation/bookInvoice)</li> <li>[Invoice/{invoiceId}/resetToDraft](#tag/Invoice/operation/invoiceResetToDraft)</li> <li>[Invoice/{invoiceId}/resetToOpen](#tag/Invoice/operation/invoiceResetToOpen)</li> </ul> 
### New endpoint [Invoice/{invoiceId}/resetToDraft](#tag/Invoice/operation/invoiceResetToDraft)
 This new endpoint can be used to reset the status of an invoice to <code>DRAFT (100)</code>. 
### New endpoint [Invoice/{invoiceId}/resetToOpen](#tag/Invoice/operation/invoiceResetToOpen)
 This new endpoint can be used to reset the status of an invoice to <code>OPEN (200)</code>. 
### New endpoint [Invoice/{invoiceId}/enshrine]((#tag/Invoice/operation/invoiceEnshrine))
 The enshrine endpoint is now used to set the property <code>enshrined</code>. <b>This operation CAN NOT be undone due to legal reasons!</b> 
## Credit Notes
 The changes to the vat rules also apply here. Check the documentation of voucher above as the changes are the same. 
### General stricter validation in PUT and POST endpoints
 We added stricter validation to ensure only correct credit notes are created which than can be further processed in sevdesk. Due to the move from taxTypes/taxSets to taxRules you need to check the compatibility of the taxRules in combination with the tax rates. Following use cases do not work anymore or have changed: <ol> <li>Creating a credit note without a date of delivery (<code>deliveryDateUntil</code>) for an invoice that has a date of delivery (<code>deliveryDateUntil</code>) is no longer possible</li> <li>Creating a credit note with a date of delivery (<code>deliveryDateUntil</code>) for an invoice that has no date of delivery (<code>deliveryDateUntil</code>) is no longer possible</li> <li>Creating a credit note with a date of delivery (<code>deliveryDateUntil</code>) that is before the date of delivery (<code>deliveryDateUntil</code>) of the invoice is no longer possible</li> <li>Creating a credit note for an advanced invoice (<code>invoiceType: 'AR'</code>) or partial invoice (<code>invoiceType: 'TR'</code>) is no longer possible</li> <li>Creating a credit note for a voucher is no longer possible</li> <li>Creating a credit note with a <code>bookingCategory</code> other than <code>UNDERACHIEVEMENT</code> is no longer possible</li> <li>Currency fluctuation (CF) is no longer supported as a payment difference</li> </ol> 
### Saving a credit note ([CreditNote/Factory/saveCreditNote](#tag/CreditNote/operation/createcreditNote))
 Following use cases do not work anymore or have changed: <ol> <li>Credit notes can only be created with the status <code>DRAFT (100)</code> and can not be changed manually. Use the matching endpoints (e.g. [sendViaEmail](#tag/CreditNote/operation/sendCreditNoteViaEMail)) to automatically change the status accordingly</li> <li>Enshrining now has to be done by using the enshrine endpoint (see below)</li> </ol> 
### Removed endpoint /CreditNote/Factory/createFromVoucher
 The endpoint will be removed. It is not possible anymore to create credit notes for vouchers within sevdesk-Update 2.0. The endpoint continues to stay available for existing sevdesk system version 1.0 clients. 
### Removed endpoint /CreditNote/{creditNoteId}/changeStatus
 This endpoint will be completely removed (including sevdesk system version 1.0!). Using these endpoints will automatically change the status accordingly: <ul> <li>[CreditNote/{creditNoteId}/sendViaEmail](#tag/CreditNote/operation/sendCreditNoteViaEMail)</li> <li>[CreditNote/{creditNoteId}/sendBy](#tag/CreditNote/operation/creditNoteSendBy)</li> <li>[CreditNote/{creditNoteId}/bookAmount](#tag/CreditNote/operation/bookCreditNote)</li> <li>[CreditNote/{creditNoteId}/resetToDraft](#tag/CreditNote/operation/creditNoteResetToDraft)</li> <li>[CreditNote/{creditNoteId}/resetToOpen](#tag/CreditNote/operation/creditNoteResetToOpen)</li> </ul> 
### New endpoint CreditNote/{creditNoteId}/resetToDraft
 This new endpoint can be used to reset the status of a credit note to <code>DRAFT (100)</code>. You can find the documentation [here](#tag/CreditNote/operation/creditNoteResetToDraft). 
### New endpoint CreditNote/{creditNoteId}/resetToOpen
 This new endpoint can be used to reset the status of a credit note to <code>OPEN (200)</code>. You can find the documentation [here](#tag/CreditNote/operation/creditNoteResetToOpen). 
### New endpoint CreditNote/{creditNoteId}/enshrine
 [The enshrine endpoint](#tag/CreditNote/operation/creditNoteEnshrine) is now used to set the property <code>enshrined</code>. <b>This operation CAN NOT be undone due to legal reasons!</b>
## Parts
 
### General stricter validation in PUT and POST endpoints
 Following use cases do not work anymore or have changed: <ol> <li>Creating products with a tax rate other than 0.0, 7.0 and 19.0 is no longer possible</li> </ol> 

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0.0
- Package version: 1.0.0
- Generator version: 7.11.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```

(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'openapi_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'openapi_client'

# Setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::AccountingContactApi.new
opts = {
  model_accounting_contact: OpenapiClient::ModelAccountingContact.new({contact: OpenapiClient::ModelAccountingContactContact.new({id: 37, object_name: 'Contact'})}) # ModelAccountingContact | Creation data
}

begin
  #Create a new accounting contact
  result = api_instance.create_accounting_contact(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AccountingContactApi->create_accounting_contact: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://my.sevdesk.de/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::AccountingContactApi* | [**create_accounting_contact**](docs/AccountingContactApi.md#create_accounting_contact) | **POST** /AccountingContact | Create a new accounting contact
*OpenapiClient::AccountingContactApi* | [**delete_accounting_contact**](docs/AccountingContactApi.md#delete_accounting_contact) | **DELETE** /AccountingContact/{accountingContactId} | Deletes an accounting contact
*OpenapiClient::AccountingContactApi* | [**get_accounting_contact**](docs/AccountingContactApi.md#get_accounting_contact) | **GET** /AccountingContact | Retrieve accounting contact
*OpenapiClient::AccountingContactApi* | [**get_accounting_contact_by_id**](docs/AccountingContactApi.md#get_accounting_contact_by_id) | **GET** /AccountingContact/{accountingContactId} | Find accounting contact by ID
*OpenapiClient::AccountingContactApi* | [**update_accounting_contact**](docs/AccountingContactApi.md#update_accounting_contact) | **PUT** /AccountingContact/{accountingContactId} | Update an existing accounting contact
*OpenapiClient::BasicsApi* | [**bookkeeping_system_version**](docs/BasicsApi.md#bookkeeping_system_version) | **GET** /Tools/bookkeepingSystemVersion | Retrieve bookkeeping system version
*OpenapiClient::CheckAccountApi* | [**create_clearing_account**](docs/CheckAccountApi.md#create_clearing_account) | **POST** /CheckAccount/Factory/clearingAccount | Create a new clearing account
*OpenapiClient::CheckAccountApi* | [**create_file_import_account**](docs/CheckAccountApi.md#create_file_import_account) | **POST** /CheckAccount/Factory/fileImportAccount | Create a new file import account
*OpenapiClient::CheckAccountApi* | [**delete_check_account**](docs/CheckAccountApi.md#delete_check_account) | **DELETE** /CheckAccount/{checkAccountId} | Deletes a check account
*OpenapiClient::CheckAccountApi* | [**get_balance_at_date**](docs/CheckAccountApi.md#get_balance_at_date) | **GET** /CheckAccount/{checkAccountId}/getBalanceAtDate | Get the balance at a given date
*OpenapiClient::CheckAccountApi* | [**get_check_account_by_id**](docs/CheckAccountApi.md#get_check_account_by_id) | **GET** /CheckAccount/{checkAccountId} | Find check account by ID
*OpenapiClient::CheckAccountApi* | [**get_check_accounts**](docs/CheckAccountApi.md#get_check_accounts) | **GET** /CheckAccount | Retrieve check accounts
*OpenapiClient::CheckAccountApi* | [**update_check_account**](docs/CheckAccountApi.md#update_check_account) | **PUT** /CheckAccount/{checkAccountId} | Update an existing check account
*OpenapiClient::CheckAccountTransactionApi* | [**check_account_transaction_enshrine**](docs/CheckAccountTransactionApi.md#check_account_transaction_enshrine) | **PUT** /CheckAccountTransaction/{checkAccountTransactionId}/enshrine | Enshrine
*OpenapiClient::CheckAccountTransactionApi* | [**create_transaction**](docs/CheckAccountTransactionApi.md#create_transaction) | **POST** /CheckAccountTransaction | Create a new transaction
*OpenapiClient::CheckAccountTransactionApi* | [**delete_check_account_transaction**](docs/CheckAccountTransactionApi.md#delete_check_account_transaction) | **DELETE** /CheckAccountTransaction/{checkAccountTransactionId} | Deletes a check account transaction
*OpenapiClient::CheckAccountTransactionApi* | [**get_check_account_transaction_by_id**](docs/CheckAccountTransactionApi.md#get_check_account_transaction_by_id) | **GET** /CheckAccountTransaction/{checkAccountTransactionId} | Find check account transaction by ID
*OpenapiClient::CheckAccountTransactionApi* | [**get_transactions**](docs/CheckAccountTransactionApi.md#get_transactions) | **GET** /CheckAccountTransaction | Retrieve transactions
*OpenapiClient::CheckAccountTransactionApi* | [**update_check_account_transaction**](docs/CheckAccountTransactionApi.md#update_check_account_transaction) | **PUT** /CheckAccountTransaction/{checkAccountTransactionId} | Update an existing check account transaction
*OpenapiClient::CommunicationWayApi* | [**create_communication_way**](docs/CommunicationWayApi.md#create_communication_way) | **POST** /CommunicationWay | Create a new contact communication way
*OpenapiClient::CommunicationWayApi* | [**delete_communication_way**](docs/CommunicationWayApi.md#delete_communication_way) | **DELETE** /CommunicationWay/{communicationWayId} | Deletes a communication way
*OpenapiClient::CommunicationWayApi* | [**get_communication_way_by_id**](docs/CommunicationWayApi.md#get_communication_way_by_id) | **GET** /CommunicationWay/{communicationWayId} | Find communication way by ID
*OpenapiClient::CommunicationWayApi* | [**get_communication_way_keys**](docs/CommunicationWayApi.md#get_communication_way_keys) | **GET** /CommunicationWayKey | Retrieve communication way keys
*OpenapiClient::CommunicationWayApi* | [**get_communication_ways**](docs/CommunicationWayApi.md#get_communication_ways) | **GET** /CommunicationWay | Retrieve communication ways
*OpenapiClient::CommunicationWayApi* | [**update_communication_way**](docs/CommunicationWayApi.md#update_communication_way) | **PUT** /CommunicationWay/{communicationWayId} | Update a existing communication way
*OpenapiClient::ContactApi* | [**contact_customer_number_availability_check**](docs/ContactApi.md#contact_customer_number_availability_check) | **GET** /Contact/Mapper/checkCustomerNumberAvailability | Check if a customer number is available
*OpenapiClient::ContactApi* | [**create_contact**](docs/ContactApi.md#create_contact) | **POST** /Contact | Create a new contact
*OpenapiClient::ContactApi* | [**delete_contact**](docs/ContactApi.md#delete_contact) | **DELETE** /Contact/{contactId} | Deletes a contact
*OpenapiClient::ContactApi* | [**find_contacts_by_custom_field_value**](docs/ContactApi.md#find_contacts_by_custom_field_value) | **GET** /Contact/Factory/findContactsByCustomFieldValue | Find contacts by custom field value
*OpenapiClient::ContactApi* | [**get_contact_by_id**](docs/ContactApi.md#get_contact_by_id) | **GET** /Contact/{contactId} | Find contact by ID
*OpenapiClient::ContactApi* | [**get_contact_tabs_item_count_by_id**](docs/ContactApi.md#get_contact_tabs_item_count_by_id) | **GET** /Contact/{contactId}/getTabsItemCount | Get number of all items
*OpenapiClient::ContactApi* | [**get_contacts**](docs/ContactApi.md#get_contacts) | **GET** /Contact | Retrieve contacts
*OpenapiClient::ContactApi* | [**get_next_customer_number**](docs/ContactApi.md#get_next_customer_number) | **GET** /Contact/Factory/getNextCustomerNumber | Get next free customer number
*OpenapiClient::ContactApi* | [**update_contact**](docs/ContactApi.md#update_contact) | **PUT** /Contact/{contactId} | Update a existing contact
*OpenapiClient::ContactAddressApi* | [**contact_address_id**](docs/ContactAddressApi.md#contact_address_id) | **GET** /ContactAddress/{contactAddressId} | Find contact address by ID
*OpenapiClient::ContactAddressApi* | [**create_contact_address**](docs/ContactAddressApi.md#create_contact_address) | **POST** /ContactAddress | Create a new contact address
*OpenapiClient::ContactAddressApi* | [**delete_contact_address**](docs/ContactAddressApi.md#delete_contact_address) | **DELETE** /ContactAddress/{contactAddressId} | Deletes a contact address
*OpenapiClient::ContactAddressApi* | [**get_contact_addresses**](docs/ContactAddressApi.md#get_contact_addresses) | **GET** /ContactAddress | Retrieve contact addresses
*OpenapiClient::ContactAddressApi* | [**update_contact_address**](docs/ContactAddressApi.md#update_contact_address) | **PUT** /ContactAddress/{contactAddressId} | update a existing contact address
*OpenapiClient::ContactFieldApi* | [**create_contact_field**](docs/ContactFieldApi.md#create_contact_field) | **POST** /ContactCustomField | Create contact field
*OpenapiClient::ContactFieldApi* | [**create_contact_field_setting**](docs/ContactFieldApi.md#create_contact_field_setting) | **POST** /ContactCustomFieldSetting | Create contact field setting
*OpenapiClient::ContactFieldApi* | [**delete_contact_custom_field_id**](docs/ContactFieldApi.md#delete_contact_custom_field_id) | **DELETE** /ContactCustomField/{contactCustomFieldId} | delete a contact field
*OpenapiClient::ContactFieldApi* | [**delete_contact_field_setting**](docs/ContactFieldApi.md#delete_contact_field_setting) | **DELETE** /ContactCustomFieldSetting/{contactCustomFieldSettingId} | Deletes a contact field setting
*OpenapiClient::ContactFieldApi* | [**get_contact_field_setting_by_id**](docs/ContactFieldApi.md#get_contact_field_setting_by_id) | **GET** /ContactCustomFieldSetting/{contactCustomFieldSettingId} | Find contact field setting by ID
*OpenapiClient::ContactFieldApi* | [**get_contact_field_settings**](docs/ContactFieldApi.md#get_contact_field_settings) | **GET** /ContactCustomFieldSetting | Retrieve contact field settings
*OpenapiClient::ContactFieldApi* | [**get_contact_fields**](docs/ContactFieldApi.md#get_contact_fields) | **GET** /ContactCustomField | Retrieve contact fields
*OpenapiClient::ContactFieldApi* | [**get_contact_fields_by_id**](docs/ContactFieldApi.md#get_contact_fields_by_id) | **GET** /ContactCustomField/{contactCustomFieldId} | Retrieve contact fields
*OpenapiClient::ContactFieldApi* | [**get_placeholder**](docs/ContactFieldApi.md#get_placeholder) | **GET** /Textparser/fetchDictionaryEntriesByType | Retrieve Placeholders
*OpenapiClient::ContactFieldApi* | [**get_reference_count**](docs/ContactFieldApi.md#get_reference_count) | **GET** /ContactCustomFieldSetting/{contactCustomFieldSettingId}/getReferenceCount | Receive count reference
*OpenapiClient::ContactFieldApi* | [**update_contact_field_setting**](docs/ContactFieldApi.md#update_contact_field_setting) | **PUT** /ContactCustomFieldSetting/{contactCustomFieldSettingId} | Update contact field setting
*OpenapiClient::ContactFieldApi* | [**update_contactfield**](docs/ContactFieldApi.md#update_contactfield) | **PUT** /ContactCustomField/{contactCustomFieldId} | Update a contact field
*OpenapiClient::CreditNoteApi* | [**book_credit_note**](docs/CreditNoteApi.md#book_credit_note) | **PUT** /CreditNote/{creditNoteId}/bookAmount | Book a credit note
*OpenapiClient::CreditNoteApi* | [**create_credit_note_from_invoice**](docs/CreditNoteApi.md#create_credit_note_from_invoice) | **POST** /CreditNote/Factory/createFromInvoice | Creates a new creditNote from an invoice
*OpenapiClient::CreditNoteApi* | [**create_credit_note_from_voucher**](docs/CreditNoteApi.md#create_credit_note_from_voucher) | **POST** /CreditNote/Factory/createFromVoucher | Creates a new creditNote from a voucher
*OpenapiClient::CreditNoteApi* | [**createcredit_note**](docs/CreditNoteApi.md#createcredit_note) | **POST** /CreditNote/Factory/saveCreditNote | Create a new creditNote
*OpenapiClient::CreditNoteApi* | [**credit_note_enshrine**](docs/CreditNoteApi.md#credit_note_enshrine) | **PUT** /CreditNote/{creditNoteId}/enshrine | Enshrine
*OpenapiClient::CreditNoteApi* | [**credit_note_get_pdf**](docs/CreditNoteApi.md#credit_note_get_pdf) | **GET** /CreditNote/{creditNoteId}/getPdf | Retrieve pdf document of a credit note
*OpenapiClient::CreditNoteApi* | [**credit_note_reset_to_draft**](docs/CreditNoteApi.md#credit_note_reset_to_draft) | **PUT** /CreditNote/{creditNoteId}/resetToDraft | Reset status to draft
*OpenapiClient::CreditNoteApi* | [**credit_note_reset_to_open**](docs/CreditNoteApi.md#credit_note_reset_to_open) | **PUT** /CreditNote/{creditNoteId}/resetToOpen | Reset status to open
*OpenapiClient::CreditNoteApi* | [**credit_note_send_by**](docs/CreditNoteApi.md#credit_note_send_by) | **PUT** /CreditNote/{creditNoteId}/sendBy | Mark credit note as sent
*OpenapiClient::CreditNoteApi* | [**deletecredit_note**](docs/CreditNoteApi.md#deletecredit_note) | **DELETE** /CreditNote/{creditNoteId} | Deletes an creditNote
*OpenapiClient::CreditNoteApi* | [**get_credit_notes**](docs/CreditNoteApi.md#get_credit_notes) | **GET** /CreditNote | Retrieve CreditNote
*OpenapiClient::CreditNoteApi* | [**getcredit_note_by_id**](docs/CreditNoteApi.md#getcredit_note_by_id) | **GET** /CreditNote/{creditNoteId} | Find creditNote by ID
*OpenapiClient::CreditNoteApi* | [**send_credit_note_by_printing**](docs/CreditNoteApi.md#send_credit_note_by_printing) | **GET** /CreditNote/{creditNoteId}/sendByWithRender | Send credit note by printing
*OpenapiClient::CreditNoteApi* | [**send_credit_note_via_e_mail**](docs/CreditNoteApi.md#send_credit_note_via_e_mail) | **POST** /CreditNote/{creditNoteId}/sendViaEmail | Send credit note via email
*OpenapiClient::CreditNoteApi* | [**updatecredit_note**](docs/CreditNoteApi.md#updatecredit_note) | **PUT** /CreditNote/{creditNoteId} | Update an existing creditNote
*OpenapiClient::CreditNotePosApi* | [**getcredit_note_positions**](docs/CreditNotePosApi.md#getcredit_note_positions) | **GET** /CreditNotePos | Retrieve creditNote positions
*OpenapiClient::ExportApi* | [**export_contact**](docs/ExportApi.md#export_contact) | **GET** /Export/contactListCsv | Export contact
*OpenapiClient::ExportApi* | [**export_credit_note**](docs/ExportApi.md#export_credit_note) | **GET** /Export/creditNoteCsv | Export creditNote
*OpenapiClient::ExportApi* | [**export_datev**](docs/ExportApi.md#export_datev) | **GET** /Export/datevCSV | Export datev
*OpenapiClient::ExportApi* | [**export_invoice**](docs/ExportApi.md#export_invoice) | **GET** /Export/invoiceCsv | Export invoice
*OpenapiClient::ExportApi* | [**export_invoice_zip**](docs/ExportApi.md#export_invoice_zip) | **GET** /Export/invoiceZip | Export Invoice as zip
*OpenapiClient::ExportApi* | [**export_transactions**](docs/ExportApi.md#export_transactions) | **GET** /Export/transactionsCsv | Export transaction
*OpenapiClient::ExportApi* | [**export_voucher**](docs/ExportApi.md#export_voucher) | **GET** /Export/voucherListCsv | Export voucher as zip
*OpenapiClient::ExportApi* | [**export_voucher_zip**](docs/ExportApi.md#export_voucher_zip) | **GET** /Export/voucherZip | Export voucher zip
*OpenapiClient::ExportApi* | [**update_export_config**](docs/ExportApi.md#update_export_config) | **PUT** /SevClient/{SevClientId}/updateExportConfig | Update export config
*OpenapiClient::InvoiceApi* | [**book_invoice**](docs/InvoiceApi.md#book_invoice) | **PUT** /Invoice/{invoiceId}/bookAmount | Book an invoice
*OpenapiClient::InvoiceApi* | [**cancel_invoice**](docs/InvoiceApi.md#cancel_invoice) | **POST** /Invoice/{invoiceId}/cancelInvoice | Cancel an invoice / Create cancellation invoice
*OpenapiClient::InvoiceApi* | [**create_invoice_by_factory**](docs/InvoiceApi.md#create_invoice_by_factory) | **POST** /Invoice/Factory/saveInvoice | Create a new invoice
*OpenapiClient::InvoiceApi* | [**create_invoice_from_order**](docs/InvoiceApi.md#create_invoice_from_order) | **POST** /Invoice/Factory/createInvoiceFromOrder | Create invoice from order
*OpenapiClient::InvoiceApi* | [**create_invoice_reminder**](docs/InvoiceApi.md#create_invoice_reminder) | **POST** /Invoice/Factory/createInvoiceReminder | Create invoice reminder
*OpenapiClient::InvoiceApi* | [**get_invoice_by_id**](docs/InvoiceApi.md#get_invoice_by_id) | **GET** /Invoice/{invoiceId} | Find invoice by ID
*OpenapiClient::InvoiceApi* | [**get_invoice_positions_by_id**](docs/InvoiceApi.md#get_invoice_positions_by_id) | **GET** /Invoice/{invoiceId}/getPositions | Find invoice positions
*OpenapiClient::InvoiceApi* | [**get_invoices**](docs/InvoiceApi.md#get_invoices) | **GET** /Invoice | Retrieve invoices
*OpenapiClient::InvoiceApi* | [**get_is_invoice_partially_paid**](docs/InvoiceApi.md#get_is_invoice_partially_paid) | **GET** /Invoice/{invoiceId}/getIsPartiallyPaid | Check if an invoice is already partially paid
*OpenapiClient::InvoiceApi* | [**invoice_enshrine**](docs/InvoiceApi.md#invoice_enshrine) | **PUT** /Invoice/{invoiceId}/enshrine | Enshrine
*OpenapiClient::InvoiceApi* | [**invoice_get_pdf**](docs/InvoiceApi.md#invoice_get_pdf) | **GET** /Invoice/{invoiceId}/getPdf | Retrieve pdf document of an invoice
*OpenapiClient::InvoiceApi* | [**invoice_get_xml**](docs/InvoiceApi.md#invoice_get_xml) | **GET** /Invoice/{invoiceId}/getXml | Retrieve XML of an e-invoice
*OpenapiClient::InvoiceApi* | [**invoice_render**](docs/InvoiceApi.md#invoice_render) | **POST** /Invoice/{invoiceId}/render | Render the pdf document of an invoice
*OpenapiClient::InvoiceApi* | [**invoice_reset_to_draft**](docs/InvoiceApi.md#invoice_reset_to_draft) | **PUT** /Invoice/{invoiceId}/resetToDraft | Reset status to draft
*OpenapiClient::InvoiceApi* | [**invoice_reset_to_open**](docs/InvoiceApi.md#invoice_reset_to_open) | **PUT** /Invoice/{invoiceId}/resetToOpen | Reset status to open
*OpenapiClient::InvoiceApi* | [**invoice_send_by**](docs/InvoiceApi.md#invoice_send_by) | **PUT** /Invoice/{invoiceId}/sendBy | Mark invoice as sent
*OpenapiClient::InvoiceApi* | [**send_invoice_via_e_mail**](docs/InvoiceApi.md#send_invoice_via_e_mail) | **POST** /Invoice/{invoiceId}/sendViaEmail | Send invoice via email
*OpenapiClient::InvoicePosApi* | [**get_invoice_pos**](docs/InvoicePosApi.md#get_invoice_pos) | **GET** /InvoicePos | Retrieve InvoicePos
*OpenapiClient::LayoutApi* | [**get_letterpapers_with_thumb**](docs/LayoutApi.md#get_letterpapers_with_thumb) | **GET** /DocServer/getLetterpapersWithThumb | Retrieve letterpapers
*OpenapiClient::LayoutApi* | [**get_templates**](docs/LayoutApi.md#get_templates) | **GET** /DocServer/getTemplatesWithThumb | Retrieve templates
*OpenapiClient::LayoutApi* | [**update_credit_note_template**](docs/LayoutApi.md#update_credit_note_template) | **PUT** /CreditNote/{creditNoteId}/changeParameter | Update an of credit note template
*OpenapiClient::LayoutApi* | [**update_invoice_template**](docs/LayoutApi.md#update_invoice_template) | **PUT** /Invoice/{invoiceId}/changeParameter | Update an invoice template
*OpenapiClient::LayoutApi* | [**update_order_template**](docs/LayoutApi.md#update_order_template) | **PUT** /Order/{orderId}/changeParameter | Update an order template
*OpenapiClient::OrderApi* | [**create_contract_note_from_order**](docs/OrderApi.md#create_contract_note_from_order) | **POST** /Order/Factory/createContractNoteFromOrder | Create contract note from order
*OpenapiClient::OrderApi* | [**create_order**](docs/OrderApi.md#create_order) | **POST** /Order/Factory/saveOrder | Create a new order
*OpenapiClient::OrderApi* | [**create_packing_list_from_order**](docs/OrderApi.md#create_packing_list_from_order) | **POST** /Order/Factory/createPackingListFromOrder | Create packing list from order
*OpenapiClient::OrderApi* | [**delete_order**](docs/OrderApi.md#delete_order) | **DELETE** /Order/{orderId} | Deletes an order
*OpenapiClient::OrderApi* | [**get_discounts**](docs/OrderApi.md#get_discounts) | **GET** /Order/{orderId}/getDiscounts | Find order discounts
*OpenapiClient::OrderApi* | [**get_order_by_id**](docs/OrderApi.md#get_order_by_id) | **GET** /Order/{orderId} | Find order by ID
*OpenapiClient::OrderApi* | [**get_order_positions_by_id**](docs/OrderApi.md#get_order_positions_by_id) | **GET** /Order/{orderId}/getPositions | Find order positions
*OpenapiClient::OrderApi* | [**get_orders**](docs/OrderApi.md#get_orders) | **GET** /Order | Retrieve orders
*OpenapiClient::OrderApi* | [**get_related_objects**](docs/OrderApi.md#get_related_objects) | **GET** /Order/{orderId}/getRelatedObjects | Find related objects
*OpenapiClient::OrderApi* | [**order_get_pdf**](docs/OrderApi.md#order_get_pdf) | **GET** /Order/{orderId}/getPdf | Retrieve pdf document of an order
*OpenapiClient::OrderApi* | [**order_send_by**](docs/OrderApi.md#order_send_by) | **PUT** /Order/{orderId}/sendBy | Mark order as sent
*OpenapiClient::OrderApi* | [**sendorder_via_e_mail**](docs/OrderApi.md#sendorder_via_e_mail) | **POST** /Order/{orderId}/sendViaEmail | Send order via email
*OpenapiClient::OrderApi* | [**update_order**](docs/OrderApi.md#update_order) | **PUT** /Order/{orderId} | Update an existing order
*OpenapiClient::OrderPosApi* | [**delete_order_pos**](docs/OrderPosApi.md#delete_order_pos) | **DELETE** /OrderPos/{orderPosId} | Deletes an order Position
*OpenapiClient::OrderPosApi* | [**get_order_position_by_id**](docs/OrderPosApi.md#get_order_position_by_id) | **GET** /OrderPos/{orderPosId} | Find order position by ID
*OpenapiClient::OrderPosApi* | [**get_order_positions**](docs/OrderPosApi.md#get_order_positions) | **GET** /OrderPos | Retrieve order positions
*OpenapiClient::OrderPosApi* | [**update_order_position**](docs/OrderPosApi.md#update_order_position) | **PUT** /OrderPos/{orderPosId} | Update an existing order position
*OpenapiClient::PartApi* | [**create_part**](docs/PartApi.md#create_part) | **POST** /Part | Create a new part
*OpenapiClient::PartApi* | [**get_part_by_id**](docs/PartApi.md#get_part_by_id) | **GET** /Part/{partId} | Find part by ID
*OpenapiClient::PartApi* | [**get_parts**](docs/PartApi.md#get_parts) | **GET** /Part | Retrieve parts
*OpenapiClient::PartApi* | [**part_get_stock**](docs/PartApi.md#part_get_stock) | **GET** /Part/{partId}/getStock | Get stock of a part
*OpenapiClient::PartApi* | [**update_part**](docs/PartApi.md#update_part) | **PUT** /Part/{partId} | Update an existing part
*OpenapiClient::ReportApi* | [**report_contact**](docs/ReportApi.md#report_contact) | **GET** /Report/contactlist | Export contact list
*OpenapiClient::ReportApi* | [**report_invoice**](docs/ReportApi.md#report_invoice) | **GET** /Report/invoicelist | Export invoice list
*OpenapiClient::ReportApi* | [**report_order**](docs/ReportApi.md#report_order) | **GET** /Report/orderlist | Export order list
*OpenapiClient::ReportApi* | [**report_voucher**](docs/ReportApi.md#report_voucher) | **GET** /Report/voucherlist | Export voucher list
*OpenapiClient::TagApi* | [**create_tag**](docs/TagApi.md#create_tag) | **POST** /Tag/Factory/create | Create a new tag
*OpenapiClient::TagApi* | [**delete_tag**](docs/TagApi.md#delete_tag) | **DELETE** /Tag/{tagId} | Deletes a tag
*OpenapiClient::TagApi* | [**get_tag_by_id**](docs/TagApi.md#get_tag_by_id) | **GET** /Tag/{tagId} | Find tag by ID
*OpenapiClient::TagApi* | [**get_tag_relations**](docs/TagApi.md#get_tag_relations) | **GET** /TagRelation | Retrieve tag relations
*OpenapiClient::TagApi* | [**get_tags**](docs/TagApi.md#get_tags) | **GET** /Tag | Retrieve tags
*OpenapiClient::TagApi* | [**update_tag**](docs/TagApi.md#update_tag) | **PUT** /Tag/{tagId} | Update tag
*OpenapiClient::VoucherApi* | [**book_voucher**](docs/VoucherApi.md#book_voucher) | **PUT** /Voucher/{voucherId}/bookAmount | Book a voucher
*OpenapiClient::VoucherApi* | [**for_account_number**](docs/VoucherApi.md#for_account_number) | **GET** /ReceiptGuidance/forAccountNumber | Get guidance by account number
*OpenapiClient::VoucherApi* | [**for_all_accounts**](docs/VoucherApi.md#for_all_accounts) | **GET** /ReceiptGuidance/forAllAccounts | Get all account guides
*OpenapiClient::VoucherApi* | [**for_expense**](docs/VoucherApi.md#for_expense) | **GET** /ReceiptGuidance/forExpense | Get guidance for expense accounts
*OpenapiClient::VoucherApi* | [**for_revenue**](docs/VoucherApi.md#for_revenue) | **GET** /ReceiptGuidance/forRevenue | Get guidance for revenue accounts
*OpenapiClient::VoucherApi* | [**for_tax_rule**](docs/VoucherApi.md#for_tax_rule) | **GET** /ReceiptGuidance/forTaxRule | Get guidance by Tax Rule
*OpenapiClient::VoucherApi* | [**get_voucher_by_id**](docs/VoucherApi.md#get_voucher_by_id) | **GET** /Voucher/{voucherId} | Find voucher by ID
*OpenapiClient::VoucherApi* | [**get_vouchers**](docs/VoucherApi.md#get_vouchers) | **GET** /Voucher | Retrieve vouchers
*OpenapiClient::VoucherApi* | [**update_voucher**](docs/VoucherApi.md#update_voucher) | **PUT** /Voucher/{voucherId} | Update an existing voucher
*OpenapiClient::VoucherApi* | [**voucher_enshrine**](docs/VoucherApi.md#voucher_enshrine) | **PUT** /Voucher/{voucherId}/enshrine | Enshrine
*OpenapiClient::VoucherApi* | [**voucher_factory_save_voucher**](docs/VoucherApi.md#voucher_factory_save_voucher) | **POST** /Voucher/Factory/saveVoucher | Create a new voucher
*OpenapiClient::VoucherApi* | [**voucher_reset_to_draft**](docs/VoucherApi.md#voucher_reset_to_draft) | **PUT** /Voucher/{voucherId}/resetToDraft | Reset status to draft
*OpenapiClient::VoucherApi* | [**voucher_reset_to_open**](docs/VoucherApi.md#voucher_reset_to_open) | **PUT** /Voucher/{voucherId}/resetToOpen | Reset status to open
*OpenapiClient::VoucherApi* | [**voucher_upload_file**](docs/VoucherApi.md#voucher_upload_file) | **POST** /Voucher/Factory/uploadTempFile | Upload voucher file
*OpenapiClient::VoucherPosApi* | [**get_voucher_positions**](docs/VoucherPosApi.md#get_voucher_positions) | **GET** /VoucherPos | Retrieve voucher positions


## Documentation for Models

 - [OpenapiClient::BookCreditNote200Response](docs/BookCreditNote200Response.md)
 - [OpenapiClient::BookCreditNote200ResponseCreditNote](docs/BookCreditNote200ResponseCreditNote.md)
 - [OpenapiClient::BookCreditNote200ResponseSevClient](docs/BookCreditNote200ResponseSevClient.md)
 - [OpenapiClient::BookCreditNoteRequest](docs/BookCreditNoteRequest.md)
 - [OpenapiClient::BookCreditNoteRequestCheckAccount](docs/BookCreditNoteRequestCheckAccount.md)
 - [OpenapiClient::BookCreditNoteRequestCheckAccountTransaction](docs/BookCreditNoteRequestCheckAccountTransaction.md)
 - [OpenapiClient::BookInvoice200Response](docs/BookInvoice200Response.md)
 - [OpenapiClient::BookInvoice200ResponseCreditNote](docs/BookInvoice200ResponseCreditNote.md)
 - [OpenapiClient::BookInvoice200ResponseSevClient](docs/BookInvoice200ResponseSevClient.md)
 - [OpenapiClient::BookInvoiceRequest](docs/BookInvoiceRequest.md)
 - [OpenapiClient::BookInvoiceRequestCheckAccountTransaction](docs/BookInvoiceRequestCheckAccountTransaction.md)
 - [OpenapiClient::BookVoucher200Response](docs/BookVoucher200Response.md)
 - [OpenapiClient::BookVoucher200ResponseCreditNote](docs/BookVoucher200ResponseCreditNote.md)
 - [OpenapiClient::BookVoucherRequest](docs/BookVoucherRequest.md)
 - [OpenapiClient::BookVoucherRequestCheckAccountTransaction](docs/BookVoucherRequestCheckAccountTransaction.md)
 - [OpenapiClient::BookkeepingSystemVersion200Response](docs/BookkeepingSystemVersion200Response.md)
 - [OpenapiClient::BookkeepingSystemVersion200ResponseObjects](docs/BookkeepingSystemVersion200ResponseObjects.md)
 - [OpenapiClient::CheckAccountTransactionEnshrine200Response](docs/CheckAccountTransactionEnshrine200Response.md)
 - [OpenapiClient::ContactCustomerNumberAvailabilityCheck200Response](docs/ContactCustomerNumberAvailabilityCheck200Response.md)
 - [OpenapiClient::CreateClearingAccount](docs/CreateClearingAccount.md)
 - [OpenapiClient::CreateClearingAccount201Response](docs/CreateClearingAccount201Response.md)
 - [OpenapiClient::CreateClearingAccountResponse](docs/CreateClearingAccountResponse.md)
 - [OpenapiClient::CreateCreditNoteFromInvoice201Response](docs/CreateCreditNoteFromInvoice201Response.md)
 - [OpenapiClient::CreateCreditNoteFromInvoice201ResponseObjects](docs/CreateCreditNoteFromInvoice201ResponseObjects.md)
 - [OpenapiClient::CreateCreditNoteFromInvoiceRequest](docs/CreateCreditNoteFromInvoiceRequest.md)
 - [OpenapiClient::CreateCreditNoteFromInvoiceRequestInvoice](docs/CreateCreditNoteFromInvoiceRequestInvoice.md)
 - [OpenapiClient::CreateCreditNoteFromVoucherRequest](docs/CreateCreditNoteFromVoucherRequest.md)
 - [OpenapiClient::CreateCreditNoteFromVoucherRequestVoucher](docs/CreateCreditNoteFromVoucherRequestVoucher.md)
 - [OpenapiClient::CreateFileImportAccount](docs/CreateFileImportAccount.md)
 - [OpenapiClient::CreateFileImportAccount201Response](docs/CreateFileImportAccount201Response.md)
 - [OpenapiClient::CreateFileImportAccountResponse](docs/CreateFileImportAccountResponse.md)
 - [OpenapiClient::CreateFileImportAccountResponseSevClient](docs/CreateFileImportAccountResponseSevClient.md)
 - [OpenapiClient::CreateInvoiceReminderRequest](docs/CreateInvoiceReminderRequest.md)
 - [OpenapiClient::CreateInvoiceReminderRequestInvoice](docs/CreateInvoiceReminderRequestInvoice.md)
 - [OpenapiClient::CreateTagRequest](docs/CreateTagRequest.md)
 - [OpenapiClient::CreateTagRequestObject](docs/CreateTagRequestObject.md)
 - [OpenapiClient::CreditNoteGetPdf200Response](docs/CreditNoteGetPdf200Response.md)
 - [OpenapiClient::CreditNoteResetToDraft200Response](docs/CreditNoteResetToDraft200Response.md)
 - [OpenapiClient::CreditNoteResetToDraft200ResponseObjects](docs/CreditNoteResetToDraft200ResponseObjects.md)
 - [OpenapiClient::CreditNoteResetToOpen200Response](docs/CreditNoteResetToOpen200Response.md)
 - [OpenapiClient::CreditNoteResetToOpen200ResponseObjects](docs/CreditNoteResetToOpen200ResponseObjects.md)
 - [OpenapiClient::CreditNoteSendByRequest](docs/CreditNoteSendByRequest.md)
 - [OpenapiClient::DeleteCheckAccount200Response](docs/DeleteCheckAccount200Response.md)
 - [OpenapiClient::ExportContact200Response](docs/ExportContact200Response.md)
 - [OpenapiClient::ExportContact200ResponseObjects](docs/ExportContact200ResponseObjects.md)
 - [OpenapiClient::ExportContactSevQueryParameter](docs/ExportContactSevQueryParameter.md)
 - [OpenapiClient::ExportContactSevQueryParameterFilter](docs/ExportContactSevQueryParameterFilter.md)
 - [OpenapiClient::ExportContactSevQueryParameterFilterCountry](docs/ExportContactSevQueryParameterFilterCountry.md)
 - [OpenapiClient::ExportCreditNote200Response](docs/ExportCreditNote200Response.md)
 - [OpenapiClient::ExportCreditNote200ResponseObjects](docs/ExportCreditNote200ResponseObjects.md)
 - [OpenapiClient::ExportCreditNoteSevQueryParameter](docs/ExportCreditNoteSevQueryParameter.md)
 - [OpenapiClient::ExportCreditNoteSevQueryParameterFilter](docs/ExportCreditNoteSevQueryParameterFilter.md)
 - [OpenapiClient::ExportCreditNoteSevQueryParameterFilterContact](docs/ExportCreditNoteSevQueryParameterFilterContact.md)
 - [OpenapiClient::ExportInvoice200Response](docs/ExportInvoice200Response.md)
 - [OpenapiClient::ExportInvoice200ResponseObjects](docs/ExportInvoice200ResponseObjects.md)
 - [OpenapiClient::ExportInvoiceSevQueryParameter](docs/ExportInvoiceSevQueryParameter.md)
 - [OpenapiClient::ExportInvoiceSevQueryParameterFilter](docs/ExportInvoiceSevQueryParameterFilter.md)
 - [OpenapiClient::ExportInvoiceSevQueryParameterFilterContact](docs/ExportInvoiceSevQueryParameterFilterContact.md)
 - [OpenapiClient::ExportInvoiceZip200Response](docs/ExportInvoiceZip200Response.md)
 - [OpenapiClient::ExportInvoiceZip200ResponseObjects](docs/ExportInvoiceZip200ResponseObjects.md)
 - [OpenapiClient::ExportInvoiceZipSevQueryParameter](docs/ExportInvoiceZipSevQueryParameter.md)
 - [OpenapiClient::ExportTransactions200Response](docs/ExportTransactions200Response.md)
 - [OpenapiClient::ExportTransactions200ResponseObjects](docs/ExportTransactions200ResponseObjects.md)
 - [OpenapiClient::ExportTransactionsSevQueryParameter](docs/ExportTransactionsSevQueryParameter.md)
 - [OpenapiClient::ExportTransactionsSevQueryParameterFilter](docs/ExportTransactionsSevQueryParameterFilter.md)
 - [OpenapiClient::ExportTransactionsSevQueryParameterFilterCheckAccount](docs/ExportTransactionsSevQueryParameterFilterCheckAccount.md)
 - [OpenapiClient::ExportVoucher200Response](docs/ExportVoucher200Response.md)
 - [OpenapiClient::ExportVoucherSevQueryParameter](docs/ExportVoucherSevQueryParameter.md)
 - [OpenapiClient::ExportVoucherSevQueryParameterFilter](docs/ExportVoucherSevQueryParameterFilter.md)
 - [OpenapiClient::ExportVoucherSevQueryParameterFilterContact](docs/ExportVoucherSevQueryParameterFilterContact.md)
 - [OpenapiClient::ExportVoucherZip200Response](docs/ExportVoucherZip200Response.md)
 - [OpenapiClient::ExportVoucherZip200ResponseObjects](docs/ExportVoucherZip200ResponseObjects.md)
 - [OpenapiClient::ExportVoucherZipSevQueryParameter](docs/ExportVoucherZipSevQueryParameter.md)
 - [OpenapiClient::ExportVoucherZipSevQueryParameterFilter](docs/ExportVoucherZipSevQueryParameterFilter.md)
 - [OpenapiClient::ExportVoucherZipSevQueryParameterFilterContact](docs/ExportVoucherZipSevQueryParameterFilterContact.md)
 - [OpenapiClient::FindContactsByCustomFieldValue200Response](docs/FindContactsByCustomFieldValue200Response.md)
 - [OpenapiClient::ForAllAccounts200Response](docs/ForAllAccounts200Response.md)
 - [OpenapiClient::GetAccountingContact200Response](docs/GetAccountingContact200Response.md)
 - [OpenapiClient::GetBalanceAtDate200Response](docs/GetBalanceAtDate200Response.md)
 - [OpenapiClient::GetCheckAccounts200Response](docs/GetCheckAccounts200Response.md)
 - [OpenapiClient::GetCommunicationWayKeys200Response](docs/GetCommunicationWayKeys200Response.md)
 - [OpenapiClient::GetCommunicationWayKeys200ResponseObjectsInner](docs/GetCommunicationWayKeys200ResponseObjectsInner.md)
 - [OpenapiClient::GetCommunicationWays200Response](docs/GetCommunicationWays200Response.md)
 - [OpenapiClient::GetContactAddresses200Response](docs/GetContactAddresses200Response.md)
 - [OpenapiClient::GetContactFieldSettings200Response](docs/GetContactFieldSettings200Response.md)
 - [OpenapiClient::GetContactFields200Response](docs/GetContactFields200Response.md)
 - [OpenapiClient::GetContactTabsItemCountById200Response](docs/GetContactTabsItemCountById200Response.md)
 - [OpenapiClient::GetCreditNotes200Response](docs/GetCreditNotes200Response.md)
 - [OpenapiClient::GetDiscounts200Response](docs/GetDiscounts200Response.md)
 - [OpenapiClient::GetInvoicePositionsById200Response](docs/GetInvoicePositionsById200Response.md)
 - [OpenapiClient::GetInvoices200Response](docs/GetInvoices200Response.md)
 - [OpenapiClient::GetLetterpapersWithThumb200Response](docs/GetLetterpapersWithThumb200Response.md)
 - [OpenapiClient::GetLetterpapersWithThumb200ResponseLetterpapersInner](docs/GetLetterpapersWithThumb200ResponseLetterpapersInner.md)
 - [OpenapiClient::GetNextCustomerNumber200Response](docs/GetNextCustomerNumber200Response.md)
 - [OpenapiClient::GetOrderPositionsById200Response](docs/GetOrderPositionsById200Response.md)
 - [OpenapiClient::GetOrders200Response](docs/GetOrders200Response.md)
 - [OpenapiClient::GetParts200Response](docs/GetParts200Response.md)
 - [OpenapiClient::GetPlaceholder200Response](docs/GetPlaceholder200Response.md)
 - [OpenapiClient::GetReferenceCount200Response](docs/GetReferenceCount200Response.md)
 - [OpenapiClient::GetTagRelations200Response](docs/GetTagRelations200Response.md)
 - [OpenapiClient::GetTags200Response](docs/GetTags200Response.md)
 - [OpenapiClient::GetTemplates200Response](docs/GetTemplates200Response.md)
 - [OpenapiClient::GetTemplates200ResponseTemplatesInner](docs/GetTemplates200ResponseTemplatesInner.md)
 - [OpenapiClient::GetTransactions200Response](docs/GetTransactions200Response.md)
 - [OpenapiClient::GetVoucherPositions200Response](docs/GetVoucherPositions200Response.md)
 - [OpenapiClient::GetVouchers200Response](docs/GetVouchers200Response.md)
 - [OpenapiClient::GetcreditNotePositions200Response](docs/GetcreditNotePositions200Response.md)
 - [OpenapiClient::InvoiceGetPdf200Response](docs/InvoiceGetPdf200Response.md)
 - [OpenapiClient::InvoiceGetXml200Response](docs/InvoiceGetXml200Response.md)
 - [OpenapiClient::InvoiceRender201Response](docs/InvoiceRender201Response.md)
 - [OpenapiClient::InvoiceRender201ResponseParametersInner](docs/InvoiceRender201ResponseParametersInner.md)
 - [OpenapiClient::InvoiceRender201ResponseParametersInnerValuesInner](docs/InvoiceRender201ResponseParametersInnerValuesInner.md)
 - [OpenapiClient::InvoiceRenderRequest](docs/InvoiceRenderRequest.md)
 - [OpenapiClient::InvoiceResetToDraft200Response](docs/InvoiceResetToDraft200Response.md)
 - [OpenapiClient::InvoiceResetToDraft200ResponseObjects](docs/InvoiceResetToDraft200ResponseObjects.md)
 - [OpenapiClient::InvoiceResetToOpen200Response](docs/InvoiceResetToOpen200Response.md)
 - [OpenapiClient::InvoiceResetToOpen200ResponseObjects](docs/InvoiceResetToOpen200ResponseObjects.md)
 - [OpenapiClient::InvoiceSendByRequest](docs/InvoiceSendByRequest.md)
 - [OpenapiClient::ModelAccountingContact](docs/ModelAccountingContact.md)
 - [OpenapiClient::ModelAccountingContactContact](docs/ModelAccountingContactContact.md)
 - [OpenapiClient::ModelAccountingContactResponse](docs/ModelAccountingContactResponse.md)
 - [OpenapiClient::ModelAccountingContactResponseContact](docs/ModelAccountingContactResponseContact.md)
 - [OpenapiClient::ModelAccountingContactResponseSevClient](docs/ModelAccountingContactResponseSevClient.md)
 - [OpenapiClient::ModelAccountingContactUpdate](docs/ModelAccountingContactUpdate.md)
 - [OpenapiClient::ModelAccountingContactUpdateContact](docs/ModelAccountingContactUpdateContact.md)
 - [OpenapiClient::ModelChangeLayout](docs/ModelChangeLayout.md)
 - [OpenapiClient::ModelChangeLayoutResponse](docs/ModelChangeLayoutResponse.md)
 - [OpenapiClient::ModelChangeLayoutResponseMetadaten](docs/ModelChangeLayoutResponseMetadaten.md)
 - [OpenapiClient::ModelChangeLayoutResponseMetadatenThumbsInner](docs/ModelChangeLayoutResponseMetadatenThumbsInner.md)
 - [OpenapiClient::ModelChangeLayoutResponseMetadatenThumbsInnerValuesInner](docs/ModelChangeLayoutResponseMetadatenThumbsInnerValuesInner.md)
 - [OpenapiClient::ModelCheckAccountResponse](docs/ModelCheckAccountResponse.md)
 - [OpenapiClient::ModelCheckAccountResponseSevClient](docs/ModelCheckAccountResponseSevClient.md)
 - [OpenapiClient::ModelCheckAccountTransaction](docs/ModelCheckAccountTransaction.md)
 - [OpenapiClient::ModelCheckAccountTransactionCheckAccount](docs/ModelCheckAccountTransactionCheckAccount.md)
 - [OpenapiClient::ModelCheckAccountTransactionResponse](docs/ModelCheckAccountTransactionResponse.md)
 - [OpenapiClient::ModelCheckAccountTransactionResponseCheckAccount](docs/ModelCheckAccountTransactionResponseCheckAccount.md)
 - [OpenapiClient::ModelCheckAccountTransactionResponseSevClient](docs/ModelCheckAccountTransactionResponseSevClient.md)
 - [OpenapiClient::ModelCheckAccountTransactionResponseSourceTransaction](docs/ModelCheckAccountTransactionResponseSourceTransaction.md)
 - [OpenapiClient::ModelCheckAccountTransactionResponseTargetTransaction](docs/ModelCheckAccountTransactionResponseTargetTransaction.md)
 - [OpenapiClient::ModelCheckAccountTransactionSevClient](docs/ModelCheckAccountTransactionSevClient.md)
 - [OpenapiClient::ModelCheckAccountTransactionSourceTransaction](docs/ModelCheckAccountTransactionSourceTransaction.md)
 - [OpenapiClient::ModelCheckAccountTransactionTargetTransaction](docs/ModelCheckAccountTransactionTargetTransaction.md)
 - [OpenapiClient::ModelCheckAccountTransactionUpdate](docs/ModelCheckAccountTransactionUpdate.md)
 - [OpenapiClient::ModelCheckAccountTransactionUpdateCheckAccount](docs/ModelCheckAccountTransactionUpdateCheckAccount.md)
 - [OpenapiClient::ModelCheckAccountUpdate](docs/ModelCheckAccountUpdate.md)
 - [OpenapiClient::ModelCommunicationWay](docs/ModelCommunicationWay.md)
 - [OpenapiClient::ModelCommunicationWayContact](docs/ModelCommunicationWayContact.md)
 - [OpenapiClient::ModelCommunicationWayKey](docs/ModelCommunicationWayKey.md)
 - [OpenapiClient::ModelCommunicationWayResponse](docs/ModelCommunicationWayResponse.md)
 - [OpenapiClient::ModelCommunicationWayResponseContact](docs/ModelCommunicationWayResponseContact.md)
 - [OpenapiClient::ModelCommunicationWayResponseKey](docs/ModelCommunicationWayResponseKey.md)
 - [OpenapiClient::ModelCommunicationWayResponseSevClient](docs/ModelCommunicationWayResponseSevClient.md)
 - [OpenapiClient::ModelCommunicationWaySevClient](docs/ModelCommunicationWaySevClient.md)
 - [OpenapiClient::ModelCommunicationWayUpdate](docs/ModelCommunicationWayUpdate.md)
 - [OpenapiClient::ModelCommunicationWayUpdateContact](docs/ModelCommunicationWayUpdateContact.md)
 - [OpenapiClient::ModelCommunicationWayUpdateKey](docs/ModelCommunicationWayUpdateKey.md)
 - [OpenapiClient::ModelContact](docs/ModelContact.md)
 - [OpenapiClient::ModelContactAddress](docs/ModelContactAddress.md)
 - [OpenapiClient::ModelContactAddressResponse](docs/ModelContactAddressResponse.md)
 - [OpenapiClient::ModelContactAddressResponseCategory](docs/ModelContactAddressResponseCategory.md)
 - [OpenapiClient::ModelContactAddressResponseContact](docs/ModelContactAddressResponseContact.md)
 - [OpenapiClient::ModelContactAddressResponseCountry](docs/ModelContactAddressResponseCountry.md)
 - [OpenapiClient::ModelContactAddressResponseSevClient](docs/ModelContactAddressResponseSevClient.md)
 - [OpenapiClient::ModelContactAddressUpdate](docs/ModelContactAddressUpdate.md)
 - [OpenapiClient::ModelContactAddressUpdateContact](docs/ModelContactAddressUpdateContact.md)
 - [OpenapiClient::ModelContactAddressUpdateCountry](docs/ModelContactAddressUpdateCountry.md)
 - [OpenapiClient::ModelContactCategory](docs/ModelContactCategory.md)
 - [OpenapiClient::ModelContactCustomField](docs/ModelContactCustomField.md)
 - [OpenapiClient::ModelContactCustomFieldContact](docs/ModelContactCustomFieldContact.md)
 - [OpenapiClient::ModelContactCustomFieldContactCustomFieldSetting](docs/ModelContactCustomFieldContactCustomFieldSetting.md)
 - [OpenapiClient::ModelContactCustomFieldResponse](docs/ModelContactCustomFieldResponse.md)
 - [OpenapiClient::ModelContactCustomFieldResponseContact](docs/ModelContactCustomFieldResponseContact.md)
 - [OpenapiClient::ModelContactCustomFieldResponseSevClient](docs/ModelContactCustomFieldResponseSevClient.md)
 - [OpenapiClient::ModelContactCustomFieldSetting](docs/ModelContactCustomFieldSetting.md)
 - [OpenapiClient::ModelContactCustomFieldSettingResponse](docs/ModelContactCustomFieldSettingResponse.md)
 - [OpenapiClient::ModelContactCustomFieldSettingResponseSevClient](docs/ModelContactCustomFieldSettingResponseSevClient.md)
 - [OpenapiClient::ModelContactCustomFieldSettingUpdate](docs/ModelContactCustomFieldSettingUpdate.md)
 - [OpenapiClient::ModelContactCustomFieldUpdate](docs/ModelContactCustomFieldUpdate.md)
 - [OpenapiClient::ModelContactCustomFieldUpdateContactCustomFieldSetting](docs/ModelContactCustomFieldUpdateContactCustomFieldSetting.md)
 - [OpenapiClient::ModelContactParent](docs/ModelContactParent.md)
 - [OpenapiClient::ModelContactResponse](docs/ModelContactResponse.md)
 - [OpenapiClient::ModelContactResponseCategory](docs/ModelContactResponseCategory.md)
 - [OpenapiClient::ModelContactResponseParent](docs/ModelContactResponseParent.md)
 - [OpenapiClient::ModelContactResponseSevClient](docs/ModelContactResponseSevClient.md)
 - [OpenapiClient::ModelContactUpdate](docs/ModelContactUpdate.md)
 - [OpenapiClient::ModelContactUpdateCategory](docs/ModelContactUpdateCategory.md)
 - [OpenapiClient::ModelContactUpdateParent](docs/ModelContactUpdateParent.md)
 - [OpenapiClient::ModelCreateInvoiceFromOrder](docs/ModelCreateInvoiceFromOrder.md)
 - [OpenapiClient::ModelCreateInvoiceFromOrderOrder](docs/ModelCreateInvoiceFromOrderOrder.md)
 - [OpenapiClient::ModelCreatePackingListFromOrder](docs/ModelCreatePackingListFromOrder.md)
 - [OpenapiClient::ModelCreditNote](docs/ModelCreditNote.md)
 - [OpenapiClient::ModelCreditNoteAddressCountry](docs/ModelCreditNoteAddressCountry.md)
 - [OpenapiClient::ModelCreditNoteContact](docs/ModelCreditNoteContact.md)
 - [OpenapiClient::ModelCreditNoteContactPerson](docs/ModelCreditNoteContactPerson.md)
 - [OpenapiClient::ModelCreditNoteCreateUser](docs/ModelCreditNoteCreateUser.md)
 - [OpenapiClient::ModelCreditNoteMailResponse](docs/ModelCreditNoteMailResponse.md)
 - [OpenapiClient::ModelCreditNoteMailResponseSevClient](docs/ModelCreditNoteMailResponseSevClient.md)
 - [OpenapiClient::ModelCreditNotePos](docs/ModelCreditNotePos.md)
 - [OpenapiClient::ModelCreditNotePosCreditNote](docs/ModelCreditNotePosCreditNote.md)
 - [OpenapiClient::ModelCreditNotePosPart](docs/ModelCreditNotePosPart.md)
 - [OpenapiClient::ModelCreditNotePosResponse](docs/ModelCreditNotePosResponse.md)
 - [OpenapiClient::ModelCreditNotePosResponseCreditNote](docs/ModelCreditNotePosResponseCreditNote.md)
 - [OpenapiClient::ModelCreditNotePosResponsePart](docs/ModelCreditNotePosResponsePart.md)
 - [OpenapiClient::ModelCreditNotePosResponseSevClient](docs/ModelCreditNotePosResponseSevClient.md)
 - [OpenapiClient::ModelCreditNotePosResponseUnity](docs/ModelCreditNotePosResponseUnity.md)
 - [OpenapiClient::ModelCreditNotePosSevClient](docs/ModelCreditNotePosSevClient.md)
 - [OpenapiClient::ModelCreditNotePosUnity](docs/ModelCreditNotePosUnity.md)
 - [OpenapiClient::ModelCreditNoteResponse](docs/ModelCreditNoteResponse.md)
 - [OpenapiClient::ModelCreditNoteResponseAddressCountry](docs/ModelCreditNoteResponseAddressCountry.md)
 - [OpenapiClient::ModelCreditNoteResponseContact](docs/ModelCreditNoteResponseContact.md)
 - [OpenapiClient::ModelCreditNoteResponseContactPerson](docs/ModelCreditNoteResponseContactPerson.md)
 - [OpenapiClient::ModelCreditNoteResponseCreateUser](docs/ModelCreditNoteResponseCreateUser.md)
 - [OpenapiClient::ModelCreditNoteResponseSevClient](docs/ModelCreditNoteResponseSevClient.md)
 - [OpenapiClient::ModelCreditNoteResponseTaxRule](docs/ModelCreditNoteResponseTaxRule.md)
 - [OpenapiClient::ModelCreditNoteResponseTaxSet](docs/ModelCreditNoteResponseTaxSet.md)
 - [OpenapiClient::ModelCreditNoteSendByWithRender](docs/ModelCreditNoteSendByWithRender.md)
 - [OpenapiClient::ModelCreditNoteSevClient](docs/ModelCreditNoteSevClient.md)
 - [OpenapiClient::ModelCreditNoteTaxSet](docs/ModelCreditNoteTaxSet.md)
 - [OpenapiClient::ModelCreditNoteUpdate](docs/ModelCreditNoteUpdate.md)
 - [OpenapiClient::ModelCreditNoteUpdateContact](docs/ModelCreditNoteUpdateContact.md)
 - [OpenapiClient::ModelCreditNoteUpdateContactPerson](docs/ModelCreditNoteUpdateContactPerson.md)
 - [OpenapiClient::ModelDiscount](docs/ModelDiscount.md)
 - [OpenapiClient::ModelDiscountObject](docs/ModelDiscountObject.md)
 - [OpenapiClient::ModelDiscountsResponse](docs/ModelDiscountsResponse.md)
 - [OpenapiClient::ModelEmail](docs/ModelEmail.md)
 - [OpenapiClient::ModelEmailOrder](docs/ModelEmailOrder.md)
 - [OpenapiClient::ModelEmailSevClient](docs/ModelEmailSevClient.md)
 - [OpenapiClient::ModelInvoice](docs/ModelInvoice.md)
 - [OpenapiClient::ModelInvoiceAddressCountry](docs/ModelInvoiceAddressCountry.md)
 - [OpenapiClient::ModelInvoiceContact](docs/ModelInvoiceContact.md)
 - [OpenapiClient::ModelInvoiceContactPerson](docs/ModelInvoiceContactPerson.md)
 - [OpenapiClient::ModelInvoiceOrigin](docs/ModelInvoiceOrigin.md)
 - [OpenapiClient::ModelInvoicePaymentMethod](docs/ModelInvoicePaymentMethod.md)
 - [OpenapiClient::ModelInvoicePos](docs/ModelInvoicePos.md)
 - [OpenapiClient::ModelInvoicePosInvoice](docs/ModelInvoicePosInvoice.md)
 - [OpenapiClient::ModelInvoicePosResponse](docs/ModelInvoicePosResponse.md)
 - [OpenapiClient::ModelInvoicePosResponseInvoice](docs/ModelInvoicePosResponseInvoice.md)
 - [OpenapiClient::ModelInvoicePosResponsePart](docs/ModelInvoicePosResponsePart.md)
 - [OpenapiClient::ModelInvoicePosResponseSevClient](docs/ModelInvoicePosResponseSevClient.md)
 - [OpenapiClient::ModelInvoicePosResponseUnity](docs/ModelInvoicePosResponseUnity.md)
 - [OpenapiClient::ModelInvoicePosSevClient](docs/ModelInvoicePosSevClient.md)
 - [OpenapiClient::ModelInvoicePosUnity](docs/ModelInvoicePosUnity.md)
 - [OpenapiClient::ModelInvoiceResponse](docs/ModelInvoiceResponse.md)
 - [OpenapiClient::ModelInvoiceResponseAddressCountry](docs/ModelInvoiceResponseAddressCountry.md)
 - [OpenapiClient::ModelInvoiceResponseContact](docs/ModelInvoiceResponseContact.md)
 - [OpenapiClient::ModelInvoiceResponseContactPerson](docs/ModelInvoiceResponseContactPerson.md)
 - [OpenapiClient::ModelInvoiceResponseCostCentre](docs/ModelInvoiceResponseCostCentre.md)
 - [OpenapiClient::ModelInvoiceResponseOrigin](docs/ModelInvoiceResponseOrigin.md)
 - [OpenapiClient::ModelInvoiceResponsePaymentMethod](docs/ModelInvoiceResponsePaymentMethod.md)
 - [OpenapiClient::ModelInvoiceResponseSevClient](docs/ModelInvoiceResponseSevClient.md)
 - [OpenapiClient::ModelInvoiceResponseTaxRule](docs/ModelInvoiceResponseTaxRule.md)
 - [OpenapiClient::ModelInvoiceResponseTaxSet](docs/ModelInvoiceResponseTaxSet.md)
 - [OpenapiClient::ModelInvoiceSevClient](docs/ModelInvoiceSevClient.md)
 - [OpenapiClient::ModelInvoiceTaxSet](docs/ModelInvoiceTaxSet.md)
 - [OpenapiClient::ModelOrder](docs/ModelOrder.md)
 - [OpenapiClient::ModelOrderAddressCountry](docs/ModelOrderAddressCountry.md)
 - [OpenapiClient::ModelOrderContact](docs/ModelOrderContact.md)
 - [OpenapiClient::ModelOrderContactPerson](docs/ModelOrderContactPerson.md)
 - [OpenapiClient::ModelOrderOrigin](docs/ModelOrderOrigin.md)
 - [OpenapiClient::ModelOrderPos](docs/ModelOrderPos.md)
 - [OpenapiClient::ModelOrderPosOrder](docs/ModelOrderPosOrder.md)
 - [OpenapiClient::ModelOrderPosResponse](docs/ModelOrderPosResponse.md)
 - [OpenapiClient::ModelOrderPosResponseOrder](docs/ModelOrderPosResponseOrder.md)
 - [OpenapiClient::ModelOrderPosResponsePart](docs/ModelOrderPosResponsePart.md)
 - [OpenapiClient::ModelOrderPosResponseSevClient](docs/ModelOrderPosResponseSevClient.md)
 - [OpenapiClient::ModelOrderPosResponseUnity](docs/ModelOrderPosResponseUnity.md)
 - [OpenapiClient::ModelOrderPosSevClient](docs/ModelOrderPosSevClient.md)
 - [OpenapiClient::ModelOrderPosUpdate](docs/ModelOrderPosUpdate.md)
 - [OpenapiClient::ModelOrderResponse](docs/ModelOrderResponse.md)
 - [OpenapiClient::ModelOrderResponseAddressCountry](docs/ModelOrderResponseAddressCountry.md)
 - [OpenapiClient::ModelOrderResponseContact](docs/ModelOrderResponseContact.md)
 - [OpenapiClient::ModelOrderResponseContactPerson](docs/ModelOrderResponseContactPerson.md)
 - [OpenapiClient::ModelOrderResponseCreateUser](docs/ModelOrderResponseCreateUser.md)
 - [OpenapiClient::ModelOrderResponseOrigin](docs/ModelOrderResponseOrigin.md)
 - [OpenapiClient::ModelOrderResponseSevClient](docs/ModelOrderResponseSevClient.md)
 - [OpenapiClient::ModelOrderResponseTaxRule](docs/ModelOrderResponseTaxRule.md)
 - [OpenapiClient::ModelOrderResponseTaxSet](docs/ModelOrderResponseTaxSet.md)
 - [OpenapiClient::ModelOrderTaxSet](docs/ModelOrderTaxSet.md)
 - [OpenapiClient::ModelOrderUpdate](docs/ModelOrderUpdate.md)
 - [OpenapiClient::ModelOrderUpdateAddressCountry](docs/ModelOrderUpdateAddressCountry.md)
 - [OpenapiClient::ModelOrderUpdateContact](docs/ModelOrderUpdateContact.md)
 - [OpenapiClient::ModelOrderUpdateContactPerson](docs/ModelOrderUpdateContactPerson.md)
 - [OpenapiClient::ModelOrderUpdateCreateUser](docs/ModelOrderUpdateCreateUser.md)
 - [OpenapiClient::ModelOrderUpdateSevClient](docs/ModelOrderUpdateSevClient.md)
 - [OpenapiClient::ModelOrderUpdateTaxSet](docs/ModelOrderUpdateTaxSet.md)
 - [OpenapiClient::ModelPart](docs/ModelPart.md)
 - [OpenapiClient::ModelPartCategory](docs/ModelPartCategory.md)
 - [OpenapiClient::ModelPartSevClient](docs/ModelPartSevClient.md)
 - [OpenapiClient::ModelPartUnity](docs/ModelPartUnity.md)
 - [OpenapiClient::ModelPartUpdate](docs/ModelPartUpdate.md)
 - [OpenapiClient::ModelTagCreateResponse](docs/ModelTagCreateResponse.md)
 - [OpenapiClient::ModelTagCreateResponseTag](docs/ModelTagCreateResponseTag.md)
 - [OpenapiClient::ModelTagResponse](docs/ModelTagResponse.md)
 - [OpenapiClient::ModelTagResponseSevClient](docs/ModelTagResponseSevClient.md)
 - [OpenapiClient::ModelTextparserFetchDictionaryEntriesByTypeResponse](docs/ModelTextparserFetchDictionaryEntriesByTypeResponse.md)
 - [OpenapiClient::ModelTextparserFetchDictionaryEntriesByTypeResponseValueInner](docs/ModelTextparserFetchDictionaryEntriesByTypeResponseValueInner.md)
 - [OpenapiClient::ModelVoucher](docs/ModelVoucher.md)
 - [OpenapiClient::ModelVoucherCostCentre](docs/ModelVoucherCostCentre.md)
 - [OpenapiClient::ModelVoucherCreateUser](docs/ModelVoucherCreateUser.md)
 - [OpenapiClient::ModelVoucherDocument](docs/ModelVoucherDocument.md)
 - [OpenapiClient::ModelVoucherPos](docs/ModelVoucherPos.md)
 - [OpenapiClient::ModelVoucherPosAccountDatev](docs/ModelVoucherPosAccountDatev.md)
 - [OpenapiClient::ModelVoucherPosAccountingType](docs/ModelVoucherPosAccountingType.md)
 - [OpenapiClient::ModelVoucherPosEstimatedAccountingType](docs/ModelVoucherPosEstimatedAccountingType.md)
 - [OpenapiClient::ModelVoucherPosResponse](docs/ModelVoucherPosResponse.md)
 - [OpenapiClient::ModelVoucherPosResponseAccountingType](docs/ModelVoucherPosResponseAccountingType.md)
 - [OpenapiClient::ModelVoucherPosResponseEstimatedAccountingType](docs/ModelVoucherPosResponseEstimatedAccountingType.md)
 - [OpenapiClient::ModelVoucherPosResponseSevClient](docs/ModelVoucherPosResponseSevClient.md)
 - [OpenapiClient::ModelVoucherPosResponseVoucher](docs/ModelVoucherPosResponseVoucher.md)
 - [OpenapiClient::ModelVoucherPosSevClient](docs/ModelVoucherPosSevClient.md)
 - [OpenapiClient::ModelVoucherPosVoucher](docs/ModelVoucherPosVoucher.md)
 - [OpenapiClient::ModelVoucherResponse](docs/ModelVoucherResponse.md)
 - [OpenapiClient::ModelVoucherResponseCostCentre](docs/ModelVoucherResponseCostCentre.md)
 - [OpenapiClient::ModelVoucherResponseCreateUser](docs/ModelVoucherResponseCreateUser.md)
 - [OpenapiClient::ModelVoucherResponseDocument](docs/ModelVoucherResponseDocument.md)
 - [OpenapiClient::ModelVoucherResponseSevClient](docs/ModelVoucherResponseSevClient.md)
 - [OpenapiClient::ModelVoucherResponseSupplier](docs/ModelVoucherResponseSupplier.md)
 - [OpenapiClient::ModelVoucherResponseTaxSet](docs/ModelVoucherResponseTaxSet.md)
 - [OpenapiClient::ModelVoucherSevClient](docs/ModelVoucherSevClient.md)
 - [OpenapiClient::ModelVoucherSupplier](docs/ModelVoucherSupplier.md)
 - [OpenapiClient::ModelVoucherTaxRule](docs/ModelVoucherTaxRule.md)
 - [OpenapiClient::ModelVoucherTaxSet](docs/ModelVoucherTaxSet.md)
 - [OpenapiClient::ModelVoucherUpdate](docs/ModelVoucherUpdate.md)
 - [OpenapiClient::ModelVoucherUpdateSupplier](docs/ModelVoucherUpdateSupplier.md)
 - [OpenapiClient::ModelVoucherUpdateTaxSet](docs/ModelVoucherUpdateTaxSet.md)
 - [OpenapiClient::OrderGetPdf200Response](docs/OrderGetPdf200Response.md)
 - [OpenapiClient::OrderSendByRequest](docs/OrderSendByRequest.md)
 - [OpenapiClient::PartGetStock200Response](docs/PartGetStock200Response.md)
 - [OpenapiClient::ReceiptGuideDto](docs/ReceiptGuideDto.md)
 - [OpenapiClient::ReceiptGuideDtoAllowedTaxRulesInner](docs/ReceiptGuideDtoAllowedTaxRulesInner.md)
 - [OpenapiClient::ReportContact200Response](docs/ReportContact200Response.md)
 - [OpenapiClient::ReportContact200ResponseObjects](docs/ReportContact200ResponseObjects.md)
 - [OpenapiClient::ReportContactSevQueryParameter](docs/ReportContactSevQueryParameter.md)
 - [OpenapiClient::ReportInvoice200Response](docs/ReportInvoice200Response.md)
 - [OpenapiClient::ReportInvoice200ResponseObjects](docs/ReportInvoice200ResponseObjects.md)
 - [OpenapiClient::ReportInvoiceSevQueryParameter](docs/ReportInvoiceSevQueryParameter.md)
 - [OpenapiClient::ReportOrder200Response](docs/ReportOrder200Response.md)
 - [OpenapiClient::ReportOrder200ResponseObjects](docs/ReportOrder200ResponseObjects.md)
 - [OpenapiClient::ReportOrderSevQueryParameter](docs/ReportOrderSevQueryParameter.md)
 - [OpenapiClient::ReportOrderSevQueryParameterFilter](docs/ReportOrderSevQueryParameterFilter.md)
 - [OpenapiClient::ReportOrderSevQueryParameterFilterContact](docs/ReportOrderSevQueryParameterFilterContact.md)
 - [OpenapiClient::ReportVoucher200Response](docs/ReportVoucher200Response.md)
 - [OpenapiClient::ReportVoucher200ResponseObjects](docs/ReportVoucher200ResponseObjects.md)
 - [OpenapiClient::ReportVoucherSevQueryParameter](docs/ReportVoucherSevQueryParameter.md)
 - [OpenapiClient::SaveCreditNote](docs/SaveCreditNote.md)
 - [OpenapiClient::SaveCreditNoteCreditNotePosDelete](docs/SaveCreditNoteCreditNotePosDelete.md)
 - [OpenapiClient::SaveCreditNoteDiscountDelete](docs/SaveCreditNoteDiscountDelete.md)
 - [OpenapiClient::SaveCreditNoteDiscountSave](docs/SaveCreditNoteDiscountSave.md)
 - [OpenapiClient::SaveCreditNoteResponse](docs/SaveCreditNoteResponse.md)
 - [OpenapiClient::SaveInvoice](docs/SaveInvoice.md)
 - [OpenapiClient::SaveInvoiceDiscountDelete](docs/SaveInvoiceDiscountDelete.md)
 - [OpenapiClient::SaveInvoiceDiscountSaveInner](docs/SaveInvoiceDiscountSaveInner.md)
 - [OpenapiClient::SaveInvoiceInvoicePosDelete](docs/SaveInvoiceInvoicePosDelete.md)
 - [OpenapiClient::SaveInvoiceResponse](docs/SaveInvoiceResponse.md)
 - [OpenapiClient::SaveOrder](docs/SaveOrder.md)
 - [OpenapiClient::SaveOrderOrderPosDelete](docs/SaveOrderOrderPosDelete.md)
 - [OpenapiClient::SaveOrderResponse](docs/SaveOrderResponse.md)
 - [OpenapiClient::SaveVoucher](docs/SaveVoucher.md)
 - [OpenapiClient::SaveVoucherResponse](docs/SaveVoucherResponse.md)
 - [OpenapiClient::SaveVoucherVoucherPosDelete](docs/SaveVoucherVoucherPosDelete.md)
 - [OpenapiClient::SendCreditNoteViaEMail201Response](docs/SendCreditNoteViaEMail201Response.md)
 - [OpenapiClient::SendCreditNoteViaEMailRequest](docs/SendCreditNoteViaEMailRequest.md)
 - [OpenapiClient::SendInvoiceViaEMailRequest](docs/SendInvoiceViaEMailRequest.md)
 - [OpenapiClient::SendorderViaEMail201Response](docs/SendorderViaEMail201Response.md)
 - [OpenapiClient::SendorderViaEMailRequest](docs/SendorderViaEMailRequest.md)
 - [OpenapiClient::UpdateExportConfigRequest](docs/UpdateExportConfigRequest.md)
 - [OpenapiClient::UpdateTagRequest](docs/UpdateTagRequest.md)
 - [OpenapiClient::ValidationError](docs/ValidationError.md)
 - [OpenapiClient::ValidationErrorError](docs/ValidationErrorError.md)
 - [OpenapiClient::VoucherResetToOpen200Response](docs/VoucherResetToOpen200Response.md)
 - [OpenapiClient::VoucherResetToOpen200ResponseObjects](docs/VoucherResetToOpen200ResponseObjects.md)
 - [OpenapiClient::VoucherUploadFile201Response](docs/VoucherUploadFile201Response.md)
 - [OpenapiClient::VoucherUploadFile201ResponseObjects](docs/VoucherUploadFile201ResponseObjects.md)
 - [OpenapiClient::VoucherUploadFileRequest](docs/VoucherUploadFileRequest.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### api_key


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

