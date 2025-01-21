=begin
#sevdesk API

#<b>Contact:</b> To contact our support click  <a href='https://landing.sevdesk.de/service-support-center-technik'>here</a><br><br>   # General information  Welcome to our API!<br>  sevdesk offers you  the possibility of retrieving data using an interface, namely the sevdesk API, and making  changes without having to use the web UI. The sevdesk interface is a REST-Full API. All sevdesk  data and functions that are used in the web UI can also be controlled through the API.   # Cross-Origin Resource Sharing  This API features Cross-Origin Resource Sharing (CORS).<br>  It enables cross-domain communication from the browser.<br>  All responses have a wildcard same-origin which makes them completely public and accessible to everyone, including any code on any site.    # Embedding resources  When retrieving resources by using this API, you might encounter nested resources in the resources you requested.<br>  For example, an invoice always contains a contact, of which you can see the ID and the object name.<br>  This API gives you the possibility to embed these resources completely into the resources you originally requested.<br>  Taking our invoice example, this would mean, that you would not only see the ID and object name of a contact, but rather the complete contact resource.    To embed resources, all you need to do is to add the query parameter 'embed' to your GET request.<br>  As values, you can provide the name of the nested resource.<br>  Multiple nested resources are also possible by providing multiple names, separated by a comma.    # Authentication and Authorization  The sevdesk API uses a token authentication to authorize calls. For this purpose every sevdesk administrator has one API token, which is a <b>hexadecimal string</b>  containing <b>32 characters</b>. The following clip shows where you can find the  API token if this is your first time with our API.<br><br> <video src='openAPI/img/findingTheApiToken.mp4' controls width='640' height='360'> Your browser cannot play this video.<br> This video explains how to find your sevDesk API token. </video> <br> The token will be needed in every request that you want to send and needs to be provided as a value of an <b>Authorization Header</b>.<br> In this case, we used some random API token. The example shows the token in the Authorization Header. <ul> <li>\"Authorization\" :<span style='color:red'>\"b7794de0085f5cd00560f160f290af38\"</span></li> </ul> The api tokens have an infinite lifetime and, in other words, exist as long as the sevdesk user exists.<br> For this reason, the user should <b>NEVER</b> be deleted.<br> If really necessary, it is advisable to save the api token as we will <b>NOT</b> be able to retrieve it afterwards!<br> It is also possible to generate a new API token, for example, if you want to prevent the usage of your sevdesk account by other people who got your current API token.<br> To achieve this, you just need to click on the \"generate new\" symbol to the right of your token and confirm it with your password.  # API News  To never miss API news and updates again, subscribe to our <b>free API newsletter</b> and get all relevant  information to keep your sevdesk software running smoothly. To subscribe, simply click <a href = 'https://landing.sevdesk.de/api-newsletter'><b>here</b></a> and confirm the email address to which we may send all updates relevant to you.  # API Requests  In our case, REST API requests need to be build by combining the following components. <table> <tr> <th><b>Component</b></th> <th><b>Description</b></th> </tr> <tr> <td>HTTP-Methods</td> <td> <ul> <li>GET (retrieve a resource)</li> <li>POST (create a resource)</li> <li>PUT (update a resource)</li> <li>DELETE (delete a resource)</li> </ul> </td> </tr> <tr> <td>URL of the API</td> <td><span style='color: #2aa198'>ht</span><span style='color: #2aa198'>tps://my.sevdesk.de/api/v1</span></td> </tr> <tr> <td>URI of the resource</td> <td>The resource to query.<br>For example contacts in sevdesk:<br><br> <span style='color:red'>/Contact</span><br><br> Which will result in the following complete URL:<br><br> <span style='color: #2aa198'>ht</span><span style='color: #2aa198'>tps://my.sevdesk.de/api/v1</span><span style='color:red'>/Contact</span> </td> </tr> <tr> <td>Query parameters</td> <td>Are attached by using the connectives <b>?</b> and <b>&</b> in the URL.<br></td> </tr> <tr> <td>Request headers</td> <td>Typical request headers are for example:<br> <div> <br> <ul> <li>Content-type</li> <li>Authorization</li> <li>Accept-Encoding</li> <li>User-Agent</li> <li>X-Version: Used for resource versioning see information below</li> <li>...</li> </ul> </div> </td> </tr> <tr>  <td>Response headers</td> <td> Typical response headers are for example:<br><br> <div> <ul>  <li>Deprecation: If a resource is deprecated we return true or a timestamp since when</li> <li>...</li> </ul> </div> </td> </tr> <tr> <td>Request body</td> <td>Mostly required in POST and PUT requests.<br> Often the request body contains json, in our case, it also accepts url-encoded data. </td> </tr> </table><br> <span style='color:red'>Note</span>: please pass a meaningful entry at the header \"User-Agent\".  If the \"User-Agent\" is set meaningfully, we can offer better support in case of queries from customers.<br> An example how such a \"User-Agent\" can look like: \"Integration-name by abc\". <br><br> This is a sample request for retrieving existing contacts in sevdesk using curl:<br><br> <img src='openAPI/img/GETRequest.PNG' alt='Get Request' height='150'><br><br> As you can see, the request contains all the components mentioned above.<br> It's HTTP method is GET, it has a correct endpoint  (<span style='color: #2aa198'>ht</span><span style='color: #2aa198'>tps://my.sevdesk.de/api/v1</span><span style='color:red'>/Contact</span>), query parameters and additional <b>header</b> information!<br><br> <b>Query Parameters</b><br><br> As you might have seen in the sample request above, there are several query parameters located in the url.<br> Those are mostly optional but prove to be very useful for a lot of requests as they can limit, extend, sort or filter the data you will get as a response.<br><br> These are the most used query parameter for the sevdesk API. <table> <tr> <th><b>Parameter</b></th> <th><b>Description</b></th> </tr> <tr> <td>embed</td> <td>Will extend some of the returned data.<br> A brief example can be found below.</td> </tr> <tr> <td>countAll</td> <td>\"countAll=true\" returns the number of items</td> </tr> </table> This is an example for the usage of the embed parameter.<br> The following first request will return all company contact entries in sevdesk up to a limit of 100 without any additional information and no offset.<br><br> <img src='openAPI/img/ContactQueryWithoutEmbed.PNG' width='900' height='850'><br><br> Now have a look at the category attribute located in the response.<br> Naturally, it just contains the id and the object name of the object but no further information.<br> We will now use the parameter embed with the value \"category\".<br><br> <img src='openAPI/img/ContactQueryWithEmbed.PNG' width='900' height='850'><br><br> As you can see, the category object is now extended and shows all the attributes and their corresponding values.<br><br> There are lot of other query parameters that can be used to filter the returned data for objects that match a certain pattern, however, those will not be mentioned here and instead can be found at the detail documentation of the most used API endpoints like contact, invoice or voucher.<br><br> <b>Pagination</b><br> <table> <tr> <th><b>Parameter</b></th> <th><b>Description</b></th> </tr> <tr> <td>limit</td> <td>Limits the number of entries that are returned.<br> Most useful in GET requests which will most likely deliver big sets of data like country or currency lists.<br> In this case, you can bypass the default limitation on returned entries by providing a high number. </td> </tr> <tr> <td>offset</td> <td>Specifies a certain offset for the data that will be returned.<br> As an example, you can specify \"offset=2\" if you want all entries except for the first two.</td> </tr> </table> Example: <ul><li><code>ht<span>tps://my.sevdesk.de/api/v1/Invoice?offset=20&limit=10<span></code></li></ul> <b>Request Headers</b><br><br> The HTTP request (response) headers allow the client as well as the server to pass additional information with the request.<br> They transfer the parameters and arguments which are important for transmitting data over HTTP.<br> Three headers which are useful / necessary when using the sevdesk API are \"Authorization, \"Accept\" and  \"Content-type\".<br> Underneath is a brief description of why and how they should be used.<br><br> <b>Authorization</b><br><br> Should be used to provide your API token in the header. <ul> <li>Authorization:<span style='color:red'>yourApiToken</span></li> </ul> <b>Accept</b><br><br> Specifies the format of the response.<br> Required for operations with a response body. <ul> <li>Accept:application/<span style='color:red'>format</span> </li> </ul> In our case, <code><span style='color:red'>format</span></code> could be replaced with <code>json</code> or <code>xml</code><br><br> <b>Content-type</b><br><br> Specifies which format is used in the request.<br> Is required for operations with a request body. <ul> <li>Content-type:application/<span style='color:red'>format</span></li> </ul> In our case,<code><span style='color:red'>format</span></code>could be replaced with <code>json</code> or <code>x-www-form-urlencoded</code> <br><br><b>API Responses</b><br><br> HTTP status codes<br> When calling the sevdesk API it is very likely that you will get a HTTP status code in the response.<br> Some API calls will also return JSON response bodies which will contain information about the resource.<br> Each status code which is returned will either be a <b>success</b> code or an <b>error</b> code.<br><br> Success codes <table> <tr> <th><b>Status code</b></th> <th><b>Description</b></th> </tr> <tr> <td><code>200 OK</code></td> <td>The request was successful</td> </tr> <tr> <td><code>201 Created</code></td> <td>Most likely to be found in the response of a <b>POST</b> request.<br> This code indicates that the desired resource was successfully created.</td> </tr> </table> <br>Error codes <table> <tr> <th><b>Status code</b></th> <th><b>Description</b></th> </tr> <tr> <td><code>400 Bad request</code></td> <td>The request you sent is most likely syntactically incorrect.<br> You should check if the parameters in the request body or the url are correct.</td> </tr> <tr> <td><code>401 Unauthorized</code></td> <td>The authentication failed.<br> Most likely caused by a missing or wrong API token.</td> </tr> <tr> <td><code>403 Forbidden</code></td> <td>You do not have the permission the access the resource which is requested.</td> </tr> <tr> <td><code>404 Not found</code></td> <td>The resource you specified does not exist.</td> </tr> <tr> <td><code>500 Internal server error</code></td> <td>An internal server error has occurred.<br> Normally this means that something went wrong on our side.<br> However, sometimes this error will appear if we missed to catch an error which is normally a 400 status code! </td> </tr> </table> <br><br> <b>Resource Versioning</b> <br><br> We use resource versioning to handle breaking changes for our endpoints, these are rarely used and will be communicated before we remove older versions.<br> To call a different version we use a specific header <code>X-Version</code> that should be filled with the desired version.<br> <ul>  <li>If you do not specify any version we assume <code>default</code></li> <li>If you specify a version that does not exist or was removed, you will get an error with information which versions are available</li> </ul> <table> <tr> <th>X-Version</th> <th>Description</th> </tr> <tr> <td><code>default</code></td> <td>Should always reference the oldest version.<br> If a specific resource is updated with a new version, <br> then the default version stays the same until the old version is deleted</td> </tr> <tr> <td><code>1.0</code> ... <code>1.9</code></td> <td>Our incrementally version for each resource independent<br> <b>Important</b>: A resource can be available via <code>default</code> but not <code>1.0</code></td> </tr> </table>  # Your First Request  After reading the introduction to our API, you should now be able to make your first call.<br> For testing our API, we would always recommend to create a trial account for sevdesk to prevent unwanted changes to your main account.<br> A trial account will be in the highest tariff (materials management), so every sevdesk function can be tested!   To start testing we would recommend one of the following tools: <ul> <li><a href='https://www.getpostman.com/'>Postman</a></li> <li><a href='https://curl.haxx.se/download.html'>cURL</a></li> </ul> This example will illustrate your first request, which is creating a new Contact in sevdesk.<br> <ol> <li>Download <a href='https://www.getpostman.com/'><b>Postman</b></a> for your desired system and start the application</li> <li>Enter <span><b>ht</span>tps://my.sevdesk.de/api/v1/Contact</b> as the url</li> <li>Create an authorization header and insert your API token as the value</li> <li>For this test, select <b>POST</b> as the HTTP method</li> <li>Go to <b>Headers</b> and enter the key-value pair <b>Content-type</b> + <b>application/x-www-form-urlencoded</b><br> As an alternative, you can just go to <b>Body</b> and select <b>x-www-form-urlencoded</b></li> <li>Now go to <b>Body</b> (if you are not there yet) and enter the key-value pairs as shown in the following picture<br><br> <img src='openAPI/img/FirstRequestPostman.PNG' width='900'><br><br></li> <li>Click on <b>Send</b>. Your response should now look like this:<br><br> <img src='openAPI/img/FirstRequestResponse.PNG' width='900'></li> </ol> As you can see, a successful response in this case returns a JSON-formatted response body containing the contact you just created.<br> For keeping it simple, this was only a minimal example of creating a contact.<br> There are however numerous combinations of parameters that you can provide which add information to your contact.  # sevdesk-Update 2.0  Started in 2024 we introduced a new era of bookkeeping in sevdesk. You can check if you already received the update by clicking on your profile in the top right in the sevdesk WebApp or by using the [Tools/bookkeepingSystemVersion endpoint](#tag/Basics/operation/bookkeepingSystemVersion).<br> The old version will be available for some customers until the end of 2024. In this short list we have outlined the changed endpoints with links to jump to the descriptions. If you received the [api newsletter](https://landing.sevdesk.de/api-newsletter) you already know what changed. Otherwise you can check the api changes [here](https://tech.sevdesk.com/api_news/posts/2024_04_04-system-update-breaking-changes/).  ## Check your bookkeeping system version  With this endpoint you can check which version you / your client uses. On that basis you must use the old or new versions of the endpoints. [Tools/bookkeepingSystemVersion Endpoint](#tag/Basics/operation/bookkeepingSystemVersion)  ## Tax Rules  <I><b>(affects the properties taxType and taxSet)</b></I><br> With sevdesk-Update 2.0 we changed the available tax rules. Due to a high likeliness of non-compliant accounting, we won't support the following tax type with the sevdesk-Update 2.0 anymore:  `taxType = custom (this includes 'taxSet': ... )`  If you only use <code>taxType = default</code>, <code>taxType = eu</code> and / or <code>taxType = ss</code>, these tax types will automatically be mapped to the new tax rules for a transition period, but you have to make sure the taxRate used in positions is within the allowed ones (you may use the [ReceiptGuidance endpoint](#tag/Voucher/operation/forAllAccounts) for that), otherwise the API will return a validation error (HTTP status code 422). For [orders](#tag/Order), [invoices](#tag/Invoice), [vouchers](#tag/Voucher) and [credit notes](#tag/CreditNote) that were created within sevdesk-Update 2.0 the response will change in all endpoints in which these objects are returned.<br> So orders, invoices, vouchers and credit notes created within sevdesk system version 1.0 still have a taxType in the response. When they are created in sevdesk-Update 2.0 they will have a taxRule instead.<br> You can continue to use taxType at first, but we recommend switching to taxRule as there are new options available that were not previously supported.<br> For orders, invoices, vouchers and credit notes that were created within sevdesk-Update 2.0 the response will change in all endpoints in which these objects are returned. This documentation holds the most current version of the endpoints.<br> Here are lists of the currently available tax rules, sorted by their use case, structured into revenue/expense and 'Regelbesteuerer'/'Kleinunternehmer'.  #### VAT rules for 'Regelbesteuerung' in sevdesk-Update 2.0 (Revenue)  <table> <tr> <th>VAT Rule</th> <th>New Property</th> <th>Allowed taxRate in positions</th> <th>Old property (deprecated)</th> </tr> <tr> <td>Umsatzsteuerpflichtige Umsätze</td> <td><code>'taxRule': 1</code></td> <td> <ul> <li>0.0</li> <li>7.0</li> <li>19.0</li> </ul> </td> <td><code>'taxType': 'default'</code></td> </tr> <tr> <td>Ausfuhren</td> <td><code>'taxRule': 2</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Innergemeinschaftliche Lieferungen</td> <td><code>'taxRule': 3</code></td> <td> <ul> <li>0.0</li> <li>7.0</li> <li>19.0</li> </ul> </td> <td><code>'taxType': 'eu'</code></td> </tr> <tr> <td>Steuerfreie Umsätze §4 UStG</td> <td><code>'taxRule': 4</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Reverse Charge gem. §13b UStG</td> <td><code>'taxRule': 5</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td> Nicht im Inland steuerbare Leistung<br> Not available for: <ul> <li>advance invoice (<code>invoiceType': 'AR'</code>)</li> <li>partial invoice (<code>'invoiceType': 'TR'</code>)</li> <li>final invoice (<code>'invoiceType': 'ER'</code>)</li> </ul> </td> <td><code>'taxRule': 17</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td><code>'taxType': 'noteu'</code></td> </tr> </table>    #### VAT rules for 'Regelbesteuerung' in sevdesk-Update 2.0 (Expense)  <table> <tr> <th>VAT Rule</th> <th>New Property</th> <th>Allowed taxRate in positions</th> <th>Old property (deprecated)</th> </tr> <tr> <td>Innergemeinschaftliche Erwerbe</td> <td><code>'taxRule': 8</code></td> <td> <ul> <li>0.0</li> <li>7.0</li> <li>19.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Vorsteuerabziehbare Aufwendungen</td> <td><code>'taxRule': 9</code></td> <td> <ul> <li>0.0</li> <li>7.0</li> <li>19.0</li> </ul> </td> <td><code>'taxType': 'default'</code></td> </tr> <tr> <td>Nicht vorsteuerabziehbare Aufwendungen</td> <td><code>'taxRule': 10</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Reverse Charge gem. §13b Abs. 2 UStG mit Vorsteuerabzug 0% (19%)</td> <td><code>'taxRule': 12</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Reverse Charge gem. §13b UStG ohne Vorsteuerabzug 0% (19%)</td> <td><code>'taxRule': 13</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Reverse Charge gem. §13b Abs. 1 EU Umsätze 0% (19%)</td> <td><code>'taxRule': 14</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> </table>    #### VAT rules for small business owner ('Kleinunternehmer') in sevdesk-Update 2.0 (Revenue)  <table> <tr> <th>VAT Rule</th> <th>New Property</th> <th>Allowed taxRate in positions</th> <th>Old property (deprecated)</th> </tr> <tr> <td>Steuer nicht erhoben nach §19UStG</td> <td><code>'taxRule': 11</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td><code>'taxType': 'ss'</code></td> </tr> </table>    #### VAT rules for small business owner ('Kleinunternehmer') in sevdesk-Update 2.0 (Expense)  <table> <tr> <th>VAT Rule</th> <th>New Property</th> <th>Allowed taxRate in positions</th> <th>Old property (deprecated)</th> </tr> <tr> <td>Nicht vorsteuerabziehbare Aufwendungen</td> <td><code>'taxRule': 10</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td><code>'taxType': 'ss'</code></td> </tr> <tr> <td>Reverse Charge gem. §13b UStG ohne Vorsteuerabzug 0% (19%)</td> <td><code>'taxRule': 13</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> </table>    ## Booking Accounts  <I><b>(affects the property accountingType)</b></I><br> With sevdesk-Update 2.0 we changed the available booking accounts and their combinatorics. If you use accountingTypes with SKR numbers that are still available in our receipt guidance, you do not have to change anything in your requests. These booking accounts will automatically be mapped to the new representation (Account Datev). But you have to make sure the taxRate used in positions and taxRule used in the voucher is within the allowed ones (check the [ReceiptGuidance](#tag/Voucher/operation/forAllAccounts)) of the provided booking account, otherwise the API will return a validation error (HTTP status code 422). For orders, invoices, vouchers and credit notes in that were created within sevdesk-Update 2.0 the response will change in all endpoints were these objects are returned.  ## Receipt Guidance  To help you decide which account can be used in conjunction with which tax rules, tax rates and documents, we created several guidance endpoints just there for you to get helpful information. You can find the descriptions in the changes section for Vouchers below or jump directly to the endpoint description by using this link: [Receipt Guidance](#tag/Voucher/operation/forAllAccounts).<br> Receipt Guidance is planned to give you guidance in which account you can pick (depending on your filter criteria and the client settings (e.g. 'Kleinunternehmer')) and which tax rate and [tax rules](#section/sevdesk-Update-2.0/Tax-Rules) are comptaible with them.   ## Vouchers   ### Saving a new voucher ([Voucher/Factory/saveVoucher](#tag/Voucher/operation/voucherFactorySaveVoucher))  Following use cases do not work anymore or have changed: <ol> <li>Custom vat regulations (taxType = custom and provided taxSet)</li> <li>Only specific tax rates and booking accounts are available. Check [ReceiptGuidance](#tag/Voucher/operation/forAllAccounts)</li> <li>Custom accounting types do not work anymore</li> <li>Using an asset booking account without creating an asset is no longer possible</li> <li>A voucher can not be directly set to paid anymore, therefore only status <code>DRAFT (50)</code> or <code>UNPAID / DUE (100)</code> are possible when creating a new voucher. Use the [/api/v1/Voucher/{voucherId}/bookAmount endpoint](#tag/Voucher/operation/bookVoucher) to set a voucher to paid</li> <li>Setting or changing the property enshrined. Use our new endpoint [/api/v1/Voucher/{voucherId}/enshrine](#tag/Voucher/operation/voucherEnshrine) to enshrine a voucher</li> </ol>  ### Get or update an existing voucher ([Voucher/{voucherId}](#tag/Voucher/operation/updateVoucher))  Following use cases do not work anymore or have changed: <ol> <li>Custom vat regulations (taxType = custom and provided taxSet)</li> <li>See [ReceiptGuidance](#tag/Voucher/operation/forAllAccounts) to check which tax rates are available in conjunction with which tax rules</li> </ol>  ### Book a voucher ([Voucher/{voucherId}](#tag/Voucher/operation/bookVoucher))  Following use cases do not work anymore or have changed: <ol> <li>Voucher with negative voucher positions can not use 'cash discount' as a payment difference anymore</li> <li>A Voucher can only be booked when it was registered beforehand (see above)</li> <li>Based on the combination of voucher positions some payment difference reasons are not possible anymore</li> <li>The currency fluctuation (CF) type is no longer supported as a payment difference reason</li> </ol>  ## Banking  Following use cases do not work anymore or have changed: <ol> <li>Setting or changing the property enshrined will now only be available by using the [appropriate enshrine endpoint](#tag/CheckAccountTransaction/operation/checkAccountTransactionEnshrine)</li> </ol>  ## Invoicing  The changes to the vat rules also apply here. Check the documentation of voucher above as the changes are the same.  ### General stricter validation in PUT and POST endpoints  We added stricter validation to ensure only correct invoices are created which than can be further processed in sevdesk. Following use cases do not work anymore or have changed: <ol> <li>Creating an invoice with taxType <code>custom</code> does not work anymore</li> <li>Processing an invoice beyond status <code>DRAFT (100)</code> without a contact does not work anymore</li> <li>Advanced invoices (<code>invoiceType: 'AR'</code>) and partial invoices (<code>invoiceType: 'TR'</code>) can only be created with the tax rule 'Umsatzsteuerpflichtige Umsätze (taxRule: 1)'(for Regelbesteuerer) or 'Steuer nicht erhoben nach §19 UStG (taxRule: 11)'(for Kleinunternehmer)</li> <li>Creating a dunning (<code>invoiceType: 'MA'</code>) with the value of property <code>reminderCharge</code> greater than 0 does not work anymore</li> <li>Creating an advanced invoice (<code>invoiceType: 'AR'</code>), a partial invoice (<code>invoiceType: 'TR'</code>) or a final invoice (<code>invoiceType: 'ER'</code>) with a currency deviating from the clients <code>defaultCurrency</code> is not possible anymore</li> <li>Changing the status manually does not work anymore (see 'Removed endpoint /Invoice/{invoiceId}/changeStatus' below)</li> <li>Enshrining now has to be done by using the [enshrine endpoint](#tag/Invoice/operation/invoiceEnshrine) (see below)</li> </ol>  ### Saving an invoice ([Invoice/Factory/saveInvoice](#tag/Invoice/operation/createInvoiceByFactory))  Following use cases do not work anymore or have changed: <ol> <li>Invoices can only be created with the status <code>DRAFT (100)</code> and can not be changed manually. Use the matching endpoints (e.g. [sendViaEmail](#tag/Invoice/operation/sendInvoiceViaEMail)) to automatically change the status accordingly</li> <li>Setting or changing the property <code>enshrined</code> is now only possible by using the [enshrine endpoint](#tag/CheckAccountTransaction/operation/checkAccountTransactionEnshrine)</li> </ol>  ### Using an order to create an invoice ([Invoice/Factory/createInvoiceFromOrder](#tag/Invoice/operation/createInvoiceFromOrder))  Following use cases do not work anymore or have changed: <ol> <li>Creating a final invoice (partialType: 'ER') is not possible if an advanced invoice (partialType: 'AR') or partial invoice (partialType: 'TR') exists. This functionality will be added in a later update</li> </ol>  ### Removed endpoint /Invoice/{invoiceId}/changeStatus  This endpoint will be completely removed (including sevdesk system version 1.0!). Using these endpoints will automatically change the status accordingly: <ul> <li>[Invoice/{invoiceId}/sendViaEmail](#tag/Invoice/operation/sendInvoiceViaEMail)</li> <li>[Invoice/{invoiceId}/sendBy](#tag/Invoice/operation/invoiceSendBy)</li> <li>[Invoice/{invoiceId}/bookAmount](#tag/Invoice/operation/bookInvoice)</li> <li>[Invoice/{invoiceId}/resetToDraft](#tag/Invoice/operation/invoiceResetToDraft)</li> <li>[Invoice/{invoiceId}/resetToOpen](#tag/Invoice/operation/invoiceResetToOpen)</li> </ul>  ### New endpoint [Invoice/{invoiceId}/resetToDraft](#tag/Invoice/operation/invoiceResetToDraft)  This new endpoint can be used to reset the status of an invoice to <code>DRAFT (100)</code>.  ### New endpoint [Invoice/{invoiceId}/resetToOpen](#tag/Invoice/operation/invoiceResetToOpen)  This new endpoint can be used to reset the status of an invoice to <code>OPEN (200)</code>.  ### New endpoint [Invoice/{invoiceId}/enshrine]((#tag/Invoice/operation/invoiceEnshrine))  The enshrine endpoint is now used to set the property <code>enshrined</code>. <b>This operation CAN NOT be undone due to legal reasons!</b>  ## Credit Notes  The changes to the vat rules also apply here. Check the documentation of voucher above as the changes are the same.  ### General stricter validation in PUT and POST endpoints  We added stricter validation to ensure only correct credit notes are created which than can be further processed in sevdesk. Due to the move from taxTypes/taxSets to taxRules you need to check the compatibility of the taxRules in combination with the tax rates. Following use cases do not work anymore or have changed: <ol> <li>Creating a credit note without a date of delivery (<code>deliveryDateUntil</code>) for an invoice that has a date of delivery (<code>deliveryDateUntil</code>) is no longer possible</li> <li>Creating a credit note with a date of delivery (<code>deliveryDateUntil</code>) for an invoice that has no date of delivery (<code>deliveryDateUntil</code>) is no longer possible</li> <li>Creating a credit note with a date of delivery (<code>deliveryDateUntil</code>) that is before the date of delivery (<code>deliveryDateUntil</code>) of the invoice is no longer possible</li> <li>Creating a credit note for an advanced invoice (<code>invoiceType: 'AR'</code>) or partial invoice (<code>invoiceType: 'TR'</code>) is no longer possible</li> <li>Creating a credit note for a voucher is no longer possible</li> <li>Creating a credit note with a <code>bookingCategory</code> other than <code>UNDERACHIEVEMENT</code> is no longer possible</li> <li>Currency fluctuation (CF) is no longer supported as a payment difference</li> </ol>  ### Saving a credit note ([CreditNote/Factory/saveCreditNote](#tag/CreditNote/operation/createcreditNote))  Following use cases do not work anymore or have changed: <ol> <li>Credit notes can only be created with the status <code>DRAFT (100)</code> and can not be changed manually. Use the matching endpoints (e.g. [sendViaEmail](#tag/CreditNote/operation/sendCreditNoteViaEMail)) to automatically change the status accordingly</li> <li>Enshrining now has to be done by using the enshrine endpoint (see below)</li> </ol>  ### Removed endpoint /CreditNote/Factory/createFromVoucher  The endpoint will be removed. It is not possible anymore to create credit notes for vouchers within sevdesk-Update 2.0. The endpoint continues to stay available for existing sevdesk system version 1.0 clients.  ### Removed endpoint /CreditNote/{creditNoteId}/changeStatus  This endpoint will be completely removed (including sevdesk system version 1.0!). Using these endpoints will automatically change the status accordingly: <ul> <li>[CreditNote/{creditNoteId}/sendViaEmail](#tag/CreditNote/operation/sendCreditNoteViaEMail)</li> <li>[CreditNote/{creditNoteId}/sendBy](#tag/CreditNote/operation/creditNoteSendBy)</li> <li>[CreditNote/{creditNoteId}/bookAmount](#tag/CreditNote/operation/bookCreditNote)</li> <li>[CreditNote/{creditNoteId}/resetToDraft](#tag/CreditNote/operation/creditNoteResetToDraft)</li> <li>[CreditNote/{creditNoteId}/resetToOpen](#tag/CreditNote/operation/creditNoteResetToOpen)</li> </ul>  ### New endpoint CreditNote/{creditNoteId}/resetToDraft  This new endpoint can be used to reset the status of a credit note to <code>DRAFT (100)</code>. You can find the documentation [here](#tag/CreditNote/operation/creditNoteResetToDraft).  ### New endpoint CreditNote/{creditNoteId}/resetToOpen  This new endpoint can be used to reset the status of a credit note to <code>OPEN (200)</code>. You can find the documentation [here](#tag/CreditNote/operation/creditNoteResetToOpen).  ### New endpoint CreditNote/{creditNoteId}/enshrine  [The enshrine endpoint](#tag/CreditNote/operation/creditNoteEnshrine) is now used to set the property <code>enshrined</code>. <b>This operation CAN NOT be undone due to legal reasons!</b> ## Parts   ### General stricter validation in PUT and POST endpoints  Following use cases do not work anymore or have changed: <ol> <li>Creating products with a tax rate other than 0.0, 7.0 and 19.0 is no longer possible</li> </ol> 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.11.0

=end

require 'cgi'

module OpenapiClient
  class CreditNoteApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Book a credit note
    # Booking the credit note with a transaction is probably the most important part in the bookkeeping process.<br> There are several ways on correctly booking a credit note, all by using the same endpoint.<br> Conveniently, the booking process is exactly the same as the process for invoices and vouchers.<br> For this reason, you can have a look at it in the <a href='#tag/Invoice/How-to-book-an-invoice'>invoice chapter</a> and all you need to do is to change \"Invoice\" into \"CreditNote\" in the URL.
    # @param credit_note_id [Integer] ID of credit note to book
    # @param [Hash] opts the optional parameters
    # @option opts [BookCreditNoteRequest] :book_credit_note_request Booking data
    # @return [BookCreditNote200Response]
    def book_credit_note(credit_note_id, opts = {})
      data, _status_code, _headers = book_credit_note_with_http_info(credit_note_id, opts)
      data
    end

    # Book a credit note
    # Booking the credit note with a transaction is probably the most important part in the bookkeeping process.&lt;br&gt; There are several ways on correctly booking a credit note, all by using the same endpoint.&lt;br&gt; Conveniently, the booking process is exactly the same as the process for invoices and vouchers.&lt;br&gt; For this reason, you can have a look at it in the &lt;a href&#x3D;&#39;#tag/Invoice/How-to-book-an-invoice&#39;&gt;invoice chapter&lt;/a&gt; and all you need to do is to change \&quot;Invoice\&quot; into \&quot;CreditNote\&quot; in the URL.
    # @param credit_note_id [Integer] ID of credit note to book
    # @param [Hash] opts the optional parameters
    # @option opts [BookCreditNoteRequest] :book_credit_note_request Booking data
    # @return [Array<(BookCreditNote200Response, Integer, Hash)>] BookCreditNote200Response data, response status code and response headers
    def book_credit_note_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.book_credit_note ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.book_credit_note"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/bookAmount'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'book_credit_note_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'BookCreditNote200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.book_credit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#book_credit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a new creditNote from an invoice
    # Use this endpoint to create a new creditNote from an invoice.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCreditNoteFromInvoiceRequest] :create_credit_note_from_invoice_request 
    # @return [CreateCreditNoteFromInvoice201Response]
    def create_credit_note_from_invoice(opts = {})
      data, _status_code, _headers = create_credit_note_from_invoice_with_http_info(opts)
      data
    end

    # Creates a new creditNote from an invoice
    # Use this endpoint to create a new creditNote from an invoice.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCreditNoteFromInvoiceRequest] :create_credit_note_from_invoice_request 
    # @return [Array<(CreateCreditNoteFromInvoice201Response, Integer, Hash)>] CreateCreditNoteFromInvoice201Response data, response status code and response headers
    def create_credit_note_from_invoice_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.create_credit_note_from_invoice ...'
      end
      # resource path
      local_var_path = '/CreditNote/Factory/createFromInvoice'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_credit_note_from_invoice_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateCreditNoteFromInvoice201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.create_credit_note_from_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#create_credit_note_from_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a new creditNote from a voucher
    # **Not supported with sevdesk-Update 2.0**  Use this endpoint to create a new creditNote from a voucher. 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCreditNoteFromVoucherRequest] :create_credit_note_from_voucher_request 
    # @return [CreateCreditNoteFromInvoice201Response]
    def create_credit_note_from_voucher(opts = {})
      data, _status_code, _headers = create_credit_note_from_voucher_with_http_info(opts)
      data
    end

    # Creates a new creditNote from a voucher
    # **Not supported with sevdesk-Update 2.0**  Use this endpoint to create a new creditNote from a voucher. 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCreditNoteFromVoucherRequest] :create_credit_note_from_voucher_request 
    # @return [Array<(CreateCreditNoteFromInvoice201Response, Integer, Hash)>] CreateCreditNoteFromInvoice201Response data, response status code and response headers
    def create_credit_note_from_voucher_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.create_credit_note_from_voucher ...'
      end
      # resource path
      local_var_path = '/CreditNote/Factory/createFromVoucher'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_credit_note_from_voucher_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateCreditNoteFromInvoice201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.create_credit_note_from_voucher",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#create_credit_note_from_voucher\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new creditNote
    # The list of parameters starts with the credit note array.<br> This array contains all required attributes for a complete credit note.<br> Most of the attributes are covered in the credit note attribute list, there are only two parameters standing out, namely <b>mapAll</b> and <b>objectName</b>.<br> These are just needed for our system and you always need to provide them.<br> The list of parameters then continues with the credit note position array.<br> With this array you have the possibility to add multiple positions at once.<br> In the example it only contains one position, again together with the parameters <b>mapAll</b> and <b>objectName</b>, however, you can add more credit note positions by extending the array.<br> So if you wanted to add another position, you would add the same list of parameters with an incremented array index of \"1\" instead of \"0\".<br><br> The list ends with the five parameters creditNotePosDelete, discountSave, discountDelete, takeDefaultAddress and forCashRegister.<br> They only play a minor role if you only want to create a credit note but we will shortly explain what they can do.<br> With creditNotePosDelete you have to option to delete credit note positions as this request can also be used to update credit notes.<br> Both discount parameters are deprecated and have no use for credit notes, however they need to be provided in case you want to use the following two parameters.<br> With takeDefaultAddress you can specify that the first address of the contact you are using for the credit note is taken for the credit note address attribute automatically, so you don't need to provide the address yourself.<br> Finally, the forCashRegister parameter needs to be set to <b>true</b> if your credit note is to be booked on the cash register.<br> If you want to know more about these parameters, for example if you want to use this request to update credit notes, feel free to contact our support.<br> Finally, after covering all parameters, they only important information left, is that the order of the last five attributes always needs to be kept.<br> You will also always need to provide all of them, as otherwise the request won't work properly.
    # @param [Hash] opts the optional parameters
    # @option opts [SaveCreditNote] :save_credit_note Creation data. Please be aware, that you need to provide at least all required parameter      of the credit note model!
    # @return [SaveCreditNoteResponse]
    def createcredit_note(opts = {})
      data, _status_code, _headers = createcredit_note_with_http_info(opts)
      data
    end

    # Create a new creditNote
    # The list of parameters starts with the credit note array.&lt;br&gt; This array contains all required attributes for a complete credit note.&lt;br&gt; Most of the attributes are covered in the credit note attribute list, there are only two parameters standing out, namely &lt;b&gt;mapAll&lt;/b&gt; and &lt;b&gt;objectName&lt;/b&gt;.&lt;br&gt; These are just needed for our system and you always need to provide them.&lt;br&gt; The list of parameters then continues with the credit note position array.&lt;br&gt; With this array you have the possibility to add multiple positions at once.&lt;br&gt; In the example it only contains one position, again together with the parameters &lt;b&gt;mapAll&lt;/b&gt; and &lt;b&gt;objectName&lt;/b&gt;, however, you can add more credit note positions by extending the array.&lt;br&gt; So if you wanted to add another position, you would add the same list of parameters with an incremented array index of \&quot;1\&quot; instead of \&quot;0\&quot;.&lt;br&gt;&lt;br&gt; The list ends with the five parameters creditNotePosDelete, discountSave, discountDelete, takeDefaultAddress and forCashRegister.&lt;br&gt; They only play a minor role if you only want to create a credit note but we will shortly explain what they can do.&lt;br&gt; With creditNotePosDelete you have to option to delete credit note positions as this request can also be used to update credit notes.&lt;br&gt; Both discount parameters are deprecated and have no use for credit notes, however they need to be provided in case you want to use the following two parameters.&lt;br&gt; With takeDefaultAddress you can specify that the first address of the contact you are using for the credit note is taken for the credit note address attribute automatically, so you don&#39;t need to provide the address yourself.&lt;br&gt; Finally, the forCashRegister parameter needs to be set to &lt;b&gt;true&lt;/b&gt; if your credit note is to be booked on the cash register.&lt;br&gt; If you want to know more about these parameters, for example if you want to use this request to update credit notes, feel free to contact our support.&lt;br&gt; Finally, after covering all parameters, they only important information left, is that the order of the last five attributes always needs to be kept.&lt;br&gt; You will also always need to provide all of them, as otherwise the request won&#39;t work properly.
    # @param [Hash] opts the optional parameters
    # @option opts [SaveCreditNote] :save_credit_note Creation data. Please be aware, that you need to provide at least all required parameter      of the credit note model!
    # @return [Array<(SaveCreditNoteResponse, Integer, Hash)>] SaveCreditNoteResponse data, response status code and response headers
    def createcredit_note_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.createcredit_note ...'
      end
      # resource path
      local_var_path = '/CreditNote/Factory/saveCreditNote'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'save_credit_note'])

      # return_type
      return_type = opts[:debug_return_type] || 'SaveCreditNoteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.createcredit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#createcredit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enshrine
    # Sets the current date and time as a value for the property `enshrined`.<br> This operation is only possible if the status is \"Open\" (`\"status\": \"200\"`) or higher.  Enshrined credit notes cannot be changed. This operation cannot be undone. 
    # @param credit_note_id [Integer] ID of the credit note to enshrine
    # @param [Hash] opts the optional parameters
    # @return [CheckAccountTransactionEnshrine200Response]
    def credit_note_enshrine(credit_note_id, opts = {})
      data, _status_code, _headers = credit_note_enshrine_with_http_info(credit_note_id, opts)
      data
    end

    # Enshrine
    # Sets the current date and time as a value for the property &#x60;enshrined&#x60;.&lt;br&gt; This operation is only possible if the status is \&quot;Open\&quot; (&#x60;\&quot;status\&quot;: \&quot;200\&quot;&#x60;) or higher.  Enshrined credit notes cannot be changed. This operation cannot be undone. 
    # @param credit_note_id [Integer] ID of the credit note to enshrine
    # @param [Hash] opts the optional parameters
    # @return [Array<(CheckAccountTransactionEnshrine200Response, Integer, Hash)>] CheckAccountTransactionEnshrine200Response data, response status code and response headers
    def credit_note_enshrine_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.credit_note_enshrine ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.credit_note_enshrine"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/enshrine'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CheckAccountTransactionEnshrine200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.credit_note_enshrine",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#credit_note_enshrine\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve pdf document of a credit note
    # Retrieves the pdf document of a credit note with additional metadata.
    # @param credit_note_id [Integer] ID of credit note from which you want the pdf
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download If u want to download the pdf of the credit note.
    # @option opts [Boolean] :prevent_send_by Defines if u want to send the credit note.
    # @return [CreditNoteGetPdf200Response]
    def credit_note_get_pdf(credit_note_id, opts = {})
      data, _status_code, _headers = credit_note_get_pdf_with_http_info(credit_note_id, opts)
      data
    end

    # Retrieve pdf document of a credit note
    # Retrieves the pdf document of a credit note with additional metadata.
    # @param credit_note_id [Integer] ID of credit note from which you want the pdf
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :download If u want to download the pdf of the credit note.
    # @option opts [Boolean] :prevent_send_by Defines if u want to send the credit note.
    # @return [Array<(CreditNoteGetPdf200Response, Integer, Hash)>] CreditNoteGetPdf200Response data, response status code and response headers
    def credit_note_get_pdf_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.credit_note_get_pdf ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.credit_note_get_pdf"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/getPdf'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'download'] = opts[:'download'] if !opts[:'download'].nil?
      query_params[:'preventSendBy'] = opts[:'prevent_send_by'] if !opts[:'prevent_send_by'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CreditNoteGetPdf200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.credit_note_get_pdf",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#credit_note_get_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset status to draft
    # Resets the status to \"Draft\" (`\"status\": \"100\"`).<br> This is only possible if the credit note has the status \"Open\" (`\"status\": \"200\"`).<br> If it has a higher status use [CreditNote/{creditNoteId}/resetToOpen](#tag/CreditNote/operation/creditNoteResetToOpen) first. 
    # @param credit_note_id [Integer] ID of the credit note to reset
    # @param [Hash] opts the optional parameters
    # @return [CreditNoteResetToDraft200Response]
    def credit_note_reset_to_draft(credit_note_id, opts = {})
      data, _status_code, _headers = credit_note_reset_to_draft_with_http_info(credit_note_id, opts)
      data
    end

    # Reset status to draft
    # Resets the status to \&quot;Draft\&quot; (&#x60;\&quot;status\&quot;: \&quot;100\&quot;&#x60;).&lt;br&gt; This is only possible if the credit note has the status \&quot;Open\&quot; (&#x60;\&quot;status\&quot;: \&quot;200\&quot;&#x60;).&lt;br&gt; If it has a higher status use [CreditNote/{creditNoteId}/resetToOpen](#tag/CreditNote/operation/creditNoteResetToOpen) first. 
    # @param credit_note_id [Integer] ID of the credit note to reset
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreditNoteResetToDraft200Response, Integer, Hash)>] CreditNoteResetToDraft200Response data, response status code and response headers
    def credit_note_reset_to_draft_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.credit_note_reset_to_draft ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.credit_note_reset_to_draft"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/resetToDraft'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CreditNoteResetToDraft200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.credit_note_reset_to_draft",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#credit_note_reset_to_draft\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset status to open
    # Resets the status \"Open\" (`\"status\": \"200\"`). Linked transactions will be unlinked.<br> This is not possible if the credit note itself or one of its transactions (CheckAccountTransaction) is already enshrined.  This endpoint cannot be used to increase the status to \"Open\" (`\"status\": \"200\"`).<br> Use [CreditNote/{creditNoteId}/sendBy](#tag/CreditNote/operation/creditNoteSendBy) / [CreditNote/{creditNoteId}/sendViaEmail](#tag/CreditNote/operation/sendCreditNoteViaEMail) instead. 
    # @param credit_note_id [Integer] ID of the credit note to reset
    # @param [Hash] opts the optional parameters
    # @return [CreditNoteResetToOpen200Response]
    def credit_note_reset_to_open(credit_note_id, opts = {})
      data, _status_code, _headers = credit_note_reset_to_open_with_http_info(credit_note_id, opts)
      data
    end

    # Reset status to open
    # Resets the status \&quot;Open\&quot; (&#x60;\&quot;status\&quot;: \&quot;200\&quot;&#x60;). Linked transactions will be unlinked.&lt;br&gt; This is not possible if the credit note itself or one of its transactions (CheckAccountTransaction) is already enshrined.  This endpoint cannot be used to increase the status to \&quot;Open\&quot; (&#x60;\&quot;status\&quot;: \&quot;200\&quot;&#x60;).&lt;br&gt; Use [CreditNote/{creditNoteId}/sendBy](#tag/CreditNote/operation/creditNoteSendBy) / [CreditNote/{creditNoteId}/sendViaEmail](#tag/CreditNote/operation/sendCreditNoteViaEMail) instead. 
    # @param credit_note_id [Integer] ID of the credit note to reset
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreditNoteResetToOpen200Response, Integer, Hash)>] CreditNoteResetToOpen200Response data, response status code and response headers
    def credit_note_reset_to_open_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.credit_note_reset_to_open ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.credit_note_reset_to_open"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/resetToOpen'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CreditNoteResetToOpen200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.credit_note_reset_to_open",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#credit_note_reset_to_open\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark credit note as sent
    # Marks an credit note as sent by a chosen send type.
    # @param credit_note_id [Integer] ID of credit note to mark as sent
    # @param [Hash] opts the optional parameters
    # @option opts [CreditNoteSendByRequest] :credit_note_send_by_request Specify the send type
    # @return [ModelCreditNoteResponse]
    def credit_note_send_by(credit_note_id, opts = {})
      data, _status_code, _headers = credit_note_send_by_with_http_info(credit_note_id, opts)
      data
    end

    # Mark credit note as sent
    # Marks an credit note as sent by a chosen send type.
    # @param credit_note_id [Integer] ID of credit note to mark as sent
    # @param [Hash] opts the optional parameters
    # @option opts [CreditNoteSendByRequest] :credit_note_send_by_request Specify the send type
    # @return [Array<(ModelCreditNoteResponse, Integer, Hash)>] ModelCreditNoteResponse data, response status code and response headers
    def credit_note_send_by_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.credit_note_send_by ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.credit_note_send_by"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/sendBy'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'credit_note_send_by_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelCreditNoteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.credit_note_send_by",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#credit_note_send_by\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an creditNote
    # @param credit_note_id [Integer] Id of creditNote resource to delete
    # @param [Hash] opts the optional parameters
    # @return [DeleteCheckAccount200Response]
    def deletecredit_note(credit_note_id, opts = {})
      data, _status_code, _headers = deletecredit_note_with_http_info(credit_note_id, opts)
      data
    end

    # Deletes an creditNote
    # @param credit_note_id [Integer] Id of creditNote resource to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCheckAccount200Response, Integer, Hash)>] DeleteCheckAccount200Response data, response status code and response headers
    def deletecredit_note_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.deletecredit_note ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.deletecredit_note"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeleteCheckAccount200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.deletecredit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#deletecredit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve CreditNote
    # There are a multitude of parameter which can be used to filter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Status of the CreditNote
    # @option opts [String] :credit_note_number Retrieve all CreditNotes with this creditNote number
    # @option opts [Integer] :start_date Retrieve all CreditNotes with a date equal or higher
    # @option opts [Integer] :end_date Retrieve all CreditNotes with a date equal or lower
    # @option opts [Integer] :contact_id Retrieve all CreditNotes with this contact. Must be provided with contact[objectName]
    # @option opts [String] :contact_object_name Only required if contact[id] was provided. &#39;Contact&#39; should be used as value.
    # @return [GetCreditNotes200Response]
    def get_credit_notes(opts = {})
      data, _status_code, _headers = get_credit_notes_with_http_info(opts)
      data
    end

    # Retrieve CreditNote
    # There are a multitude of parameter which can be used to filter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Status of the CreditNote
    # @option opts [String] :credit_note_number Retrieve all CreditNotes with this creditNote number
    # @option opts [Integer] :start_date Retrieve all CreditNotes with a date equal or higher
    # @option opts [Integer] :end_date Retrieve all CreditNotes with a date equal or lower
    # @option opts [Integer] :contact_id Retrieve all CreditNotes with this contact. Must be provided with contact[objectName]
    # @option opts [String] :contact_object_name Only required if contact[id] was provided. &#39;Contact&#39; should be used as value.
    # @return [Array<(GetCreditNotes200Response, Integer, Hash)>] GetCreditNotes200Response data, response status code and response headers
    def get_credit_notes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.get_credit_notes ...'
      end
      allowable_values = ["100", "200", "300", "500", "750", "1000"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/CreditNote'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'creditNoteNumber'] = opts[:'credit_note_number'] if !opts[:'credit_note_number'].nil?
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'contact[id]'] = opts[:'contact_id'] if !opts[:'contact_id'].nil?
      query_params[:'contact[objectName]'] = opts[:'contact_object_name'] if !opts[:'contact_object_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetCreditNotes200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.get_credit_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#get_credit_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find creditNote by ID
    # Returns a single creditNote
    # @param credit_note_id [Integer] ID of creditNote to return
    # @param [Hash] opts the optional parameters
    # @return [GetCreditNotes200Response]
    def getcredit_note_by_id(credit_note_id, opts = {})
      data, _status_code, _headers = getcredit_note_by_id_with_http_info(credit_note_id, opts)
      data
    end

    # Find creditNote by ID
    # Returns a single creditNote
    # @param credit_note_id [Integer] ID of creditNote to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCreditNotes200Response, Integer, Hash)>] GetCreditNotes200Response data, response status code and response headers
    def getcredit_note_by_id_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.getcredit_note_by_id ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.getcredit_note_by_id"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetCreditNotes200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.getcredit_note_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#getcredit_note_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send credit note by printing
    # Sending a credit note to end-customers is an important part of the bookkeeping process.<br> Depending on the way you want to send the credit note, you need to use different endpoints.<br> Let's start with just printing out the credit note, meaning we only need to render the pdf.
    # @param credit_note_id [Integer] ID of creditNote to return
    # @param send_type [String] the type you want to print.
    # @param [Hash] opts the optional parameters
    # @return [ModelCreditNoteSendByWithRender]
    def send_credit_note_by_printing(credit_note_id, send_type, opts = {})
      data, _status_code, _headers = send_credit_note_by_printing_with_http_info(credit_note_id, send_type, opts)
      data
    end

    # Send credit note by printing
    # Sending a credit note to end-customers is an important part of the bookkeeping process.&lt;br&gt; Depending on the way you want to send the credit note, you need to use different endpoints.&lt;br&gt; Let&#39;s start with just printing out the credit note, meaning we only need to render the pdf.
    # @param credit_note_id [Integer] ID of creditNote to return
    # @param send_type [String] the type you want to print.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelCreditNoteSendByWithRender, Integer, Hash)>] ModelCreditNoteSendByWithRender data, response status code and response headers
    def send_credit_note_by_printing_with_http_info(credit_note_id, send_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.send_credit_note_by_printing ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.send_credit_note_by_printing"
      end
      # verify the required parameter 'send_type' is set
      if @api_client.config.client_side_validation && send_type.nil?
        fail ArgumentError, "Missing the required parameter 'send_type' when calling CreditNoteApi.send_credit_note_by_printing"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/sendByWithRender'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sendType'] = send_type

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ModelCreditNoteSendByWithRender'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.send_credit_note_by_printing",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#send_credit_note_by_printing\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send credit note via email
    # This endpoint sends the specified credit note to a customer via email.<br>      This will automatically mark the credit note as sent.<br>      Please note, that in production an credit note is not allowed to be changed after this happened!
    # @param credit_note_id [Integer] ID of credit note to be sent via email
    # @param [Hash] opts the optional parameters
    # @option opts [SendCreditNoteViaEMailRequest] :send_credit_note_via_e_mail_request Mail data
    # @return [SendCreditNoteViaEMail201Response]
    def send_credit_note_via_e_mail(credit_note_id, opts = {})
      data, _status_code, _headers = send_credit_note_via_e_mail_with_http_info(credit_note_id, opts)
      data
    end

    # Send credit note via email
    # This endpoint sends the specified credit note to a customer via email.&lt;br&gt;      This will automatically mark the credit note as sent.&lt;br&gt;      Please note, that in production an credit note is not allowed to be changed after this happened!
    # @param credit_note_id [Integer] ID of credit note to be sent via email
    # @param [Hash] opts the optional parameters
    # @option opts [SendCreditNoteViaEMailRequest] :send_credit_note_via_e_mail_request Mail data
    # @return [Array<(SendCreditNoteViaEMail201Response, Integer, Hash)>] SendCreditNoteViaEMail201Response data, response status code and response headers
    def send_credit_note_via_e_mail_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.send_credit_note_via_e_mail ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.send_credit_note_via_e_mail"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}/sendViaEmail'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'send_credit_note_via_e_mail_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'SendCreditNoteViaEMail201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.send_credit_note_via_e_mail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#send_credit_note_via_e_mail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing creditNote
    # Update a creditNote
    # @param credit_note_id [Integer] ID of creditNote to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCreditNoteUpdate] :model_credit_note_update Update data
    # @return [ModelCreditNoteResponse]
    def updatecredit_note(credit_note_id, opts = {})
      data, _status_code, _headers = updatecredit_note_with_http_info(credit_note_id, opts)
      data
    end

    # Update an existing creditNote
    # Update a creditNote
    # @param credit_note_id [Integer] ID of creditNote to update
    # @param [Hash] opts the optional parameters
    # @option opts [ModelCreditNoteUpdate] :model_credit_note_update Update data
    # @return [Array<(ModelCreditNoteResponse, Integer, Hash)>] ModelCreditNoteResponse data, response status code and response headers
    def updatecredit_note_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNoteApi.updatecredit_note ...'
      end
      # verify the required parameter 'credit_note_id' is set
      if @api_client.config.client_side_validation && credit_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditNoteApi.updatecredit_note"
      end
      # resource path
      local_var_path = '/CreditNote/{creditNoteId}'.sub('{' + 'creditNoteId' + '}', CGI.escape(credit_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'model_credit_note_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelCreditNoteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"CreditNoteApi.updatecredit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNoteApi#updatecredit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
