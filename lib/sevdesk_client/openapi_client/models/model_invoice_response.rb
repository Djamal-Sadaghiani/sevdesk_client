=begin
#sevdesk API

#<b>Contact:</b> To contact our support click  <a href='https://landing.sevdesk.de/service-support-center-technik'>here</a><br><br>   # General information  Welcome to our API!<br>  sevdesk offers you  the possibility of retrieving data using an interface, namely the sevdesk API, and making  changes without having to use the web UI. The sevdesk interface is a REST-Full API. All sevdesk  data and functions that are used in the web UI can also be controlled through the API.   # Cross-Origin Resource Sharing  This API features Cross-Origin Resource Sharing (CORS).<br>  It enables cross-domain communication from the browser.<br>  All responses have a wildcard same-origin which makes them completely public and accessible to everyone, including any code on any site.    # Embedding resources  When retrieving resources by using this API, you might encounter nested resources in the resources you requested.<br>  For example, an invoice always contains a contact, of which you can see the ID and the object name.<br>  This API gives you the possibility to embed these resources completely into the resources you originally requested.<br>  Taking our invoice example, this would mean, that you would not only see the ID and object name of a contact, but rather the complete contact resource.    To embed resources, all you need to do is to add the query parameter 'embed' to your GET request.<br>  As values, you can provide the name of the nested resource.<br>  Multiple nested resources are also possible by providing multiple names, separated by a comma.    # Authentication and Authorization  The sevdesk API uses a token authentication to authorize calls. For this purpose every sevdesk administrator has one API token, which is a <b>hexadecimal string</b>  containing <b>32 characters</b>. The following clip shows where you can find the  API token if this is your first time with our API.<br><br> <video src='openAPI/img/findingTheApiToken.mp4' controls width='640' height='360'> Your browser cannot play this video.<br> This video explains how to find your sevDesk API token. </video> <br> The token will be needed in every request that you want to send and needs to be provided as a value of an <b>Authorization Header</b>.<br> In this case, we used some random API token. The example shows the token in the Authorization Header. <ul> <li>\"Authorization\" :<span style='color:red'>\"b7794de0085f5cd00560f160f290af38\"</span></li> </ul> The api tokens have an infinite lifetime and, in other words, exist as long as the sevdesk user exists.<br> For this reason, the user should <b>NEVER</b> be deleted.<br> If really necessary, it is advisable to save the api token as we will <b>NOT</b> be able to retrieve it afterwards!<br> It is also possible to generate a new API token, for example, if you want to prevent the usage of your sevdesk account by other people who got your current API token.<br> To achieve this, you just need to click on the \"generate new\" symbol to the right of your token and confirm it with your password.  # API News  To never miss API news and updates again, subscribe to our <b>free API newsletter</b> and get all relevant  information to keep your sevdesk software running smoothly. To subscribe, simply click <a href = 'https://landing.sevdesk.de/api-newsletter'><b>here</b></a> and confirm the email address to which we may send all updates relevant to you.  # API Requests  In our case, REST API requests need to be build by combining the following components. <table> <tr> <th><b>Component</b></th> <th><b>Description</b></th> </tr> <tr> <td>HTTP-Methods</td> <td> <ul> <li>GET (retrieve a resource)</li> <li>POST (create a resource)</li> <li>PUT (update a resource)</li> <li>DELETE (delete a resource)</li> </ul> </td> </tr> <tr> <td>URL of the API</td> <td><span style='color: #2aa198'>ht</span><span style='color: #2aa198'>tps://my.sevdesk.de/api/v1</span></td> </tr> <tr> <td>URI of the resource</td> <td>The resource to query.<br>For example contacts in sevdesk:<br><br> <span style='color:red'>/Contact</span><br><br> Which will result in the following complete URL:<br><br> <span style='color: #2aa198'>ht</span><span style='color: #2aa198'>tps://my.sevdesk.de/api/v1</span><span style='color:red'>/Contact</span> </td> </tr> <tr> <td>Query parameters</td> <td>Are attached by using the connectives <b>?</b> and <b>&</b> in the URL.<br></td> </tr> <tr> <td>Request headers</td> <td>Typical request headers are for example:<br> <div> <br> <ul> <li>Content-type</li> <li>Authorization</li> <li>Accept-Encoding</li> <li>User-Agent</li> <li>X-Version: Used for resource versioning see information below</li> <li>...</li> </ul> </div> </td> </tr> <tr>  <td>Response headers</td> <td> Typical response headers are for example:<br><br> <div> <ul>  <li>Deprecation: If a resource is deprecated we return true or a timestamp since when</li> <li>...</li> </ul> </div> </td> </tr> <tr> <td>Request body</td> <td>Mostly required in POST and PUT requests.<br> Often the request body contains json, in our case, it also accepts url-encoded data. </td> </tr> </table><br> <span style='color:red'>Note</span>: please pass a meaningful entry at the header \"User-Agent\".  If the \"User-Agent\" is set meaningfully, we can offer better support in case of queries from customers.<br> An example how such a \"User-Agent\" can look like: \"Integration-name by abc\". <br><br> This is a sample request for retrieving existing contacts in sevdesk using curl:<br><br> <img src='openAPI/img/GETRequest.PNG' alt='Get Request' height='150'><br><br> As you can see, the request contains all the components mentioned above.<br> It's HTTP method is GET, it has a correct endpoint  (<span style='color: #2aa198'>ht</span><span style='color: #2aa198'>tps://my.sevdesk.de/api/v1</span><span style='color:red'>/Contact</span>), query parameters and additional <b>header</b> information!<br><br> <b>Query Parameters</b><br><br> As you might have seen in the sample request above, there are several query parameters located in the url.<br> Those are mostly optional but prove to be very useful for a lot of requests as they can limit, extend, sort or filter the data you will get as a response.<br><br> These are the most used query parameter for the sevdesk API. <table> <tr> <th><b>Parameter</b></th> <th><b>Description</b></th> </tr> <tr> <td>embed</td> <td>Will extend some of the returned data.<br> A brief example can be found below.</td> </tr> <tr> <td>countAll</td> <td>\"countAll=true\" returns the number of items</td> </tr> </table> This is an example for the usage of the embed parameter.<br> The following first request will return all company contact entries in sevdesk up to a limit of 100 without any additional information and no offset.<br><br> <img src='openAPI/img/ContactQueryWithoutEmbed.PNG' width='900' height='850'><br><br> Now have a look at the category attribute located in the response.<br> Naturally, it just contains the id and the object name of the object but no further information.<br> We will now use the parameter embed with the value \"category\".<br><br> <img src='openAPI/img/ContactQueryWithEmbed.PNG' width='900' height='850'><br><br> As you can see, the category object is now extended and shows all the attributes and their corresponding values.<br><br> There are lot of other query parameters that can be used to filter the returned data for objects that match a certain pattern, however, those will not be mentioned here and instead can be found at the detail documentation of the most used API endpoints like contact, invoice or voucher.<br><br> <b>Pagination</b><br> <table> <tr> <th><b>Parameter</b></th> <th><b>Description</b></th> </tr> <tr> <td>limit</td> <td>Limits the number of entries that are returned.<br> Most useful in GET requests which will most likely deliver big sets of data like country or currency lists.<br> In this case, you can bypass the default limitation on returned entries by providing a high number. </td> </tr> <tr> <td>offset</td> <td>Specifies a certain offset for the data that will be returned.<br> As an example, you can specify \"offset=2\" if you want all entries except for the first two.</td> </tr> </table> Example: <ul><li><code>ht<span>tps://my.sevdesk.de/api/v1/Invoice?offset=20&limit=10<span></code></li></ul> <b>Request Headers</b><br><br> The HTTP request (response) headers allow the client as well as the server to pass additional information with the request.<br> They transfer the parameters and arguments which are important for transmitting data over HTTP.<br> Three headers which are useful / necessary when using the sevdesk API are \"Authorization, \"Accept\" and  \"Content-type\".<br> Underneath is a brief description of why and how they should be used.<br><br> <b>Authorization</b><br><br> Should be used to provide your API token in the header. <ul> <li>Authorization:<span style='color:red'>yourApiToken</span></li> </ul> <b>Accept</b><br><br> Specifies the format of the response.<br> Required for operations with a response body. <ul> <li>Accept:application/<span style='color:red'>format</span> </li> </ul> In our case, <code><span style='color:red'>format</span></code> could be replaced with <code>json</code> or <code>xml</code><br><br> <b>Content-type</b><br><br> Specifies which format is used in the request.<br> Is required for operations with a request body. <ul> <li>Content-type:application/<span style='color:red'>format</span></li> </ul> In our case,<code><span style='color:red'>format</span></code>could be replaced with <code>json</code> or <code>x-www-form-urlencoded</code> <br><br><b>API Responses</b><br><br> HTTP status codes<br> When calling the sevdesk API it is very likely that you will get a HTTP status code in the response.<br> Some API calls will also return JSON response bodies which will contain information about the resource.<br> Each status code which is returned will either be a <b>success</b> code or an <b>error</b> code.<br><br> Success codes <table> <tr> <th><b>Status code</b></th> <th><b>Description</b></th> </tr> <tr> <td><code>200 OK</code></td> <td>The request was successful</td> </tr> <tr> <td><code>201 Created</code></td> <td>Most likely to be found in the response of a <b>POST</b> request.<br> This code indicates that the desired resource was successfully created.</td> </tr> </table> <br>Error codes <table> <tr> <th><b>Status code</b></th> <th><b>Description</b></th> </tr> <tr> <td><code>400 Bad request</code></td> <td>The request you sent is most likely syntactically incorrect.<br> You should check if the parameters in the request body or the url are correct.</td> </tr> <tr> <td><code>401 Unauthorized</code></td> <td>The authentication failed.<br> Most likely caused by a missing or wrong API token.</td> </tr> <tr> <td><code>403 Forbidden</code></td> <td>You do not have the permission the access the resource which is requested.</td> </tr> <tr> <td><code>404 Not found</code></td> <td>The resource you specified does not exist.</td> </tr> <tr> <td><code>500 Internal server error</code></td> <td>An internal server error has occurred.<br> Normally this means that something went wrong on our side.<br> However, sometimes this error will appear if we missed to catch an error which is normally a 400 status code! </td> </tr> </table> <br><br> <b>Resource Versioning</b> <br><br> We use resource versioning to handle breaking changes for our endpoints, these are rarely used and will be communicated before we remove older versions.<br> To call a different version we use a specific header <code>X-Version</code> that should be filled with the desired version.<br> <ul>  <li>If you do not specify any version we assume <code>default</code></li> <li>If you specify a version that does not exist or was removed, you will get an error with information which versions are available</li> </ul> <table> <tr> <th>X-Version</th> <th>Description</th> </tr> <tr> <td><code>default</code></td> <td>Should always reference the oldest version.<br> If a specific resource is updated with a new version, <br> then the default version stays the same until the old version is deleted</td> </tr> <tr> <td><code>1.0</code> ... <code>1.9</code></td> <td>Our incrementally version for each resource independent<br> <b>Important</b>: A resource can be available via <code>default</code> but not <code>1.0</code></td> </tr> </table>  # Your First Request  After reading the introduction to our API, you should now be able to make your first call.<br> For testing our API, we would always recommend to create a trial account for sevdesk to prevent unwanted changes to your main account.<br> A trial account will be in the highest tariff (materials management), so every sevdesk function can be tested!   To start testing we would recommend one of the following tools: <ul> <li><a href='https://www.getpostman.com/'>Postman</a></li> <li><a href='https://curl.haxx.se/download.html'>cURL</a></li> </ul> This example will illustrate your first request, which is creating a new Contact in sevdesk.<br> <ol> <li>Download <a href='https://www.getpostman.com/'><b>Postman</b></a> for your desired system and start the application</li> <li>Enter <span><b>ht</span>tps://my.sevdesk.de/api/v1/Contact</b> as the url</li> <li>Create an authorization header and insert your API token as the value</li> <li>For this test, select <b>POST</b> as the HTTP method</li> <li>Go to <b>Headers</b> and enter the key-value pair <b>Content-type</b> + <b>application/x-www-form-urlencoded</b><br> As an alternative, you can just go to <b>Body</b> and select <b>x-www-form-urlencoded</b></li> <li>Now go to <b>Body</b> (if you are not there yet) and enter the key-value pairs as shown in the following picture<br><br> <img src='openAPI/img/FirstRequestPostman.PNG' width='900'><br><br></li> <li>Click on <b>Send</b>. Your response should now look like this:<br><br> <img src='openAPI/img/FirstRequestResponse.PNG' width='900'></li> </ol> As you can see, a successful response in this case returns a JSON-formatted response body containing the contact you just created.<br> For keeping it simple, this was only a minimal example of creating a contact.<br> There are however numerous combinations of parameters that you can provide which add information to your contact.  # sevdesk-Update 2.0  Started in 2024 we introduced a new era of bookkeeping in sevdesk. You can check if you already received the update by clicking on your profile in the top right in the sevdesk WebApp or by using the [Tools/bookkeepingSystemVersion endpoint](#tag/Basics/operation/bookkeepingSystemVersion).<br> The old version will be available for some customers until the end of 2024. In this short list we have outlined the changed endpoints with links to jump to the descriptions. If you received the [api newsletter](https://landing.sevdesk.de/api-newsletter) you already know what changed. Otherwise you can check the api changes [here](https://tech.sevdesk.com/api_news/posts/2024_04_04-system-update-breaking-changes/).  ## Check your bookkeeping system version  With this endpoint you can check which version you / your client uses. On that basis you must use the old or new versions of the endpoints. [Tools/bookkeepingSystemVersion Endpoint](#tag/Basics/operation/bookkeepingSystemVersion)  ## Tax Rules  <I><b>(affects the properties taxType and taxSet)</b></I><br> With sevdesk-Update 2.0 we changed the available tax rules. Due to a high likeliness of non-compliant accounting, we won't support the following tax type with the sevdesk-Update 2.0 anymore:  `taxType = custom (this includes 'taxSet': ... )`  If you only use <code>taxType = default</code>, <code>taxType = eu</code> and / or <code>taxType = ss</code>, these tax types will automatically be mapped to the new tax rules for a transition period, but you have to make sure the taxRate used in positions is within the allowed ones (you may use the [ReceiptGuidance endpoint](#tag/Voucher/operation/forAllAccounts) for that), otherwise the API will return a validation error (HTTP status code 422). For [orders](#tag/Order), [invoices](#tag/Invoice), [vouchers](#tag/Voucher) and [credit notes](#tag/CreditNote) that were created within sevdesk-Update 2.0 the response will change in all endpoints in which these objects are returned.<br> So orders, invoices, vouchers and credit notes created within sevdesk system version 1.0 still have a taxType in the response. When they are created in sevdesk-Update 2.0 they will have a taxRule instead.<br> You can continue to use taxType at first, but we recommend switching to taxRule as there are new options available that were not previously supported.<br> For orders, invoices, vouchers and credit notes that were created within sevdesk-Update 2.0 the response will change in all endpoints in which these objects are returned. This documentation holds the most current version of the endpoints.<br> Here are lists of the currently available tax rules, sorted by their use case, structured into revenue/expense and 'Regelbesteuerer'/'Kleinunternehmer'.  #### VAT rules for 'Regelbesteuerung' in sevdesk-Update 2.0 (Revenue)  <table> <tr> <th>VAT Rule</th> <th>New Property</th> <th>Allowed taxRate in positions</th> <th>Old property (deprecated)</th> </tr> <tr> <td>Umsatzsteuerpflichtige Umsätze</td> <td><code>'taxRule': 1</code></td> <td> <ul> <li>0.0</li> <li>7.0</li> <li>19.0</li> </ul> </td> <td><code>'taxType': 'default'</code></td> </tr> <tr> <td>Ausfuhren</td> <td><code>'taxRule': 2</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Innergemeinschaftliche Lieferungen</td> <td><code>'taxRule': 3</code></td> <td> <ul> <li>0.0</li> <li>7.0</li> <li>19.0</li> </ul> </td> <td><code>'taxType': 'eu'</code></td> </tr> <tr> <td>Steuerfreie Umsätze §4 UStG</td> <td><code>'taxRule': 4</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Reverse Charge gem. §13b UStG</td> <td><code>'taxRule': 5</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td> Nicht im Inland steuerbare Leistung<br> Not available for: <ul> <li>advance invoice (<code>invoiceType': 'AR'</code>)</li> <li>partial invoice (<code>'invoiceType': 'TR'</code>)</li> <li>final invoice (<code>'invoiceType': 'ER'</code>)</li> </ul> </td> <td><code>'taxRule': 17</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td><code>'taxType': 'noteu'</code></td> </tr> </table>    #### VAT rules for 'Regelbesteuerung' in sevdesk-Update 2.0 (Expense)  <table> <tr> <th>VAT Rule</th> <th>New Property</th> <th>Allowed taxRate in positions</th> <th>Old property (deprecated)</th> </tr> <tr> <td>Innergemeinschaftliche Erwerbe</td> <td><code>'taxRule': 8</code></td> <td> <ul> <li>0.0</li> <li>7.0</li> <li>19.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Vorsteuerabziehbare Aufwendungen</td> <td><code>'taxRule': 9</code></td> <td> <ul> <li>0.0</li> <li>7.0</li> <li>19.0</li> </ul> </td> <td><code>'taxType': 'default'</code></td> </tr> <tr> <td>Nicht vorsteuerabziehbare Aufwendungen</td> <td><code>'taxRule': 10</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Reverse Charge gem. §13b Abs. 2 UStG mit Vorsteuerabzug 0% (19%)</td> <td><code>'taxRule': 12</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Reverse Charge gem. §13b UStG ohne Vorsteuerabzug 0% (19%)</td> <td><code>'taxRule': 13</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> <tr> <td>Reverse Charge gem. §13b Abs. 1 EU Umsätze 0% (19%)</td> <td><code>'taxRule': 14</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> </table>    #### VAT rules for small business owner ('Kleinunternehmer') in sevdesk-Update 2.0 (Revenue)  <table> <tr> <th>VAT Rule</th> <th>New Property</th> <th>Allowed taxRate in positions</th> <th>Old property (deprecated)</th> </tr> <tr> <td>Steuer nicht erhoben nach §19UStG</td> <td><code>'taxRule': 11</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td><code>'taxType': 'ss'</code></td> </tr> </table>    #### VAT rules for small business owner ('Kleinunternehmer') in sevdesk-Update 2.0 (Expense)  <table> <tr> <th>VAT Rule</th> <th>New Property</th> <th>Allowed taxRate in positions</th> <th>Old property (deprecated)</th> </tr> <tr> <td>Nicht vorsteuerabziehbare Aufwendungen</td> <td><code>'taxRule': 10</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td><code>'taxType': 'ss'</code></td> </tr> <tr> <td>Reverse Charge gem. §13b UStG ohne Vorsteuerabzug 0% (19%)</td> <td><code>'taxRule': 13</code></td> <td> <ul> <li>0.0</li> </ul> </td> <td>-</td> </tr> </table>    ## Booking Accounts  <I><b>(affects the property accountingType)</b></I><br> With sevdesk-Update 2.0 we changed the available booking accounts and their combinatorics. If you use accountingTypes with SKR numbers that are still available in our receipt guidance, you do not have to change anything in your requests. These booking accounts will automatically be mapped to the new representation (Account Datev). But you have to make sure the taxRate used in positions and taxRule used in the voucher is within the allowed ones (check the [ReceiptGuidance](#tag/Voucher/operation/forAllAccounts)) of the provided booking account, otherwise the API will return a validation error (HTTP status code 422). For orders, invoices, vouchers and credit notes in that were created within sevdesk-Update 2.0 the response will change in all endpoints were these objects are returned.  ## Receipt Guidance  To help you decide which account can be used in conjunction with which tax rules, tax rates and documents, we created several guidance endpoints just there for you to get helpful information. You can find the descriptions in the changes section for Vouchers below or jump directly to the endpoint description by using this link: [Receipt Guidance](#tag/Voucher/operation/forAllAccounts).<br> Receipt Guidance is planned to give you guidance in which account you can pick (depending on your filter criteria and the client settings (e.g. 'Kleinunternehmer')) and which tax rate and [tax rules](#section/sevdesk-Update-2.0/Tax-Rules) are comptaible with them.   ## Vouchers   ### Saving a new voucher ([Voucher/Factory/saveVoucher](#tag/Voucher/operation/voucherFactorySaveVoucher))  Following use cases do not work anymore or have changed: <ol> <li>Custom vat regulations (taxType = custom and provided taxSet)</li> <li>Only specific tax rates and booking accounts are available. Check [ReceiptGuidance](#tag/Voucher/operation/forAllAccounts)</li> <li>Custom accounting types do not work anymore</li> <li>Using an asset booking account without creating an asset is no longer possible</li> <li>A voucher can not be directly set to paid anymore, therefore only status <code>DRAFT (50)</code> or <code>UNPAID / DUE (100)</code> are possible when creating a new voucher. Use the [/api/v1/Voucher/{voucherId}/bookAmount endpoint](#tag/Voucher/operation/bookVoucher) to set a voucher to paid</li> <li>Setting or changing the property enshrined. Use our new endpoint [/api/v1/Voucher/{voucherId}/enshrine](#tag/Voucher/operation/voucherEnshrine) to enshrine a voucher</li> </ol>  ### Get or update an existing voucher ([Voucher/{voucherId}](#tag/Voucher/operation/updateVoucher))  Following use cases do not work anymore or have changed: <ol> <li>Custom vat regulations (taxType = custom and provided taxSet)</li> <li>See [ReceiptGuidance](#tag/Voucher/operation/forAllAccounts) to check which tax rates are available in conjunction with which tax rules</li> </ol>  ### Book a voucher ([Voucher/{voucherId}](#tag/Voucher/operation/bookVoucher))  Following use cases do not work anymore or have changed: <ol> <li>Voucher with negative voucher positions can not use 'cash discount' as a payment difference anymore</li> <li>A Voucher can only be booked when it was registered beforehand (see above)</li> <li>Based on the combination of voucher positions some payment difference reasons are not possible anymore</li> <li>The currency fluctuation (CF) type is no longer supported as a payment difference reason</li> </ol>  ## Banking  Following use cases do not work anymore or have changed: <ol> <li>Setting or changing the property enshrined will now only be available by using the [appropriate enshrine endpoint](#tag/CheckAccountTransaction/operation/checkAccountTransactionEnshrine)</li> </ol>  ## Invoicing  The changes to the vat rules also apply here. Check the documentation of voucher above as the changes are the same.  ### General stricter validation in PUT and POST endpoints  We added stricter validation to ensure only correct invoices are created which than can be further processed in sevdesk. Following use cases do not work anymore or have changed: <ol> <li>Creating an invoice with taxType <code>custom</code> does not work anymore</li> <li>Processing an invoice beyond status <code>DRAFT (100)</code> without a contact does not work anymore</li> <li>Advanced invoices (<code>invoiceType: 'AR'</code>) and partial invoices (<code>invoiceType: 'TR'</code>) can only be created with the tax rule 'Umsatzsteuerpflichtige Umsätze (taxRule: 1)'(for Regelbesteuerer) or 'Steuer nicht erhoben nach §19 UStG (taxRule: 11)'(for Kleinunternehmer)</li> <li>Creating a dunning (<code>invoiceType: 'MA'</code>) with the value of property <code>reminderCharge</code> greater than 0 does not work anymore</li> <li>Creating an advanced invoice (<code>invoiceType: 'AR'</code>), a partial invoice (<code>invoiceType: 'TR'</code>) or a final invoice (<code>invoiceType: 'ER'</code>) with a currency deviating from the clients <code>defaultCurrency</code> is not possible anymore</li> <li>Changing the status manually does not work anymore (see 'Removed endpoint /Invoice/{invoiceId}/changeStatus' below)</li> <li>Enshrining now has to be done by using the [enshrine endpoint](#tag/Invoice/operation/invoiceEnshrine) (see below)</li> </ol>  ### Saving an invoice ([Invoice/Factory/saveInvoice](#tag/Invoice/operation/createInvoiceByFactory))  Following use cases do not work anymore or have changed: <ol> <li>Invoices can only be created with the status <code>DRAFT (100)</code> and can not be changed manually. Use the matching endpoints (e.g. [sendViaEmail](#tag/Invoice/operation/sendInvoiceViaEMail)) to automatically change the status accordingly</li> <li>Setting or changing the property <code>enshrined</code> is now only possible by using the [enshrine endpoint](#tag/CheckAccountTransaction/operation/checkAccountTransactionEnshrine)</li> </ol>  ### Using an order to create an invoice ([Invoice/Factory/createInvoiceFromOrder](#tag/Invoice/operation/createInvoiceFromOrder))  Following use cases do not work anymore or have changed: <ol> <li>Creating a final invoice (partialType: 'ER') is not possible if an advanced invoice (partialType: 'AR') or partial invoice (partialType: 'TR') exists. This functionality will be added in a later update</li> </ol>  ### Removed endpoint /Invoice/{invoiceId}/changeStatus  This endpoint will be completely removed (including sevdesk system version 1.0!). Using these endpoints will automatically change the status accordingly: <ul> <li>[Invoice/{invoiceId}/sendViaEmail](#tag/Invoice/operation/sendInvoiceViaEMail)</li> <li>[Invoice/{invoiceId}/sendBy](#tag/Invoice/operation/invoiceSendBy)</li> <li>[Invoice/{invoiceId}/bookAmount](#tag/Invoice/operation/bookInvoice)</li> <li>[Invoice/{invoiceId}/resetToDraft](#tag/Invoice/operation/invoiceResetToDraft)</li> <li>[Invoice/{invoiceId}/resetToOpen](#tag/Invoice/operation/invoiceResetToOpen)</li> </ul>  ### New endpoint [Invoice/{invoiceId}/resetToDraft](#tag/Invoice/operation/invoiceResetToDraft)  This new endpoint can be used to reset the status of an invoice to <code>DRAFT (100)</code>.  ### New endpoint [Invoice/{invoiceId}/resetToOpen](#tag/Invoice/operation/invoiceResetToOpen)  This new endpoint can be used to reset the status of an invoice to <code>OPEN (200)</code>.  ### New endpoint [Invoice/{invoiceId}/enshrine]((#tag/Invoice/operation/invoiceEnshrine))  The enshrine endpoint is now used to set the property <code>enshrined</code>. <b>This operation CAN NOT be undone due to legal reasons!</b>  ## Credit Notes  The changes to the vat rules also apply here. Check the documentation of voucher above as the changes are the same.  ### General stricter validation in PUT and POST endpoints  We added stricter validation to ensure only correct credit notes are created which than can be further processed in sevdesk. Due to the move from taxTypes/taxSets to taxRules you need to check the compatibility of the taxRules in combination with the tax rates. Following use cases do not work anymore or have changed: <ol> <li>Creating a credit note without a date of delivery (<code>deliveryDateUntil</code>) for an invoice that has a date of delivery (<code>deliveryDateUntil</code>) is no longer possible</li> <li>Creating a credit note with a date of delivery (<code>deliveryDateUntil</code>) for an invoice that has no date of delivery (<code>deliveryDateUntil</code>) is no longer possible</li> <li>Creating a credit note with a date of delivery (<code>deliveryDateUntil</code>) that is before the date of delivery (<code>deliveryDateUntil</code>) of the invoice is no longer possible</li> <li>Creating a credit note for an advanced invoice (<code>invoiceType: 'AR'</code>) or partial invoice (<code>invoiceType: 'TR'</code>) is no longer possible</li> <li>Creating a credit note for a voucher is no longer possible</li> <li>Creating a credit note with a <code>bookingCategory</code> other than <code>UNDERACHIEVEMENT</code> is no longer possible</li> <li>Currency fluctuation (CF) is no longer supported as a payment difference</li> </ol>  ### Saving a credit note ([CreditNote/Factory/saveCreditNote](#tag/CreditNote/operation/createcreditNote))  Following use cases do not work anymore or have changed: <ol> <li>Credit notes can only be created with the status <code>DRAFT (100)</code> and can not be changed manually. Use the matching endpoints (e.g. [sendViaEmail](#tag/CreditNote/operation/sendCreditNoteViaEMail)) to automatically change the status accordingly</li> <li>Enshrining now has to be done by using the enshrine endpoint (see below)</li> </ol>  ### Removed endpoint /CreditNote/Factory/createFromVoucher  The endpoint will be removed. It is not possible anymore to create credit notes for vouchers within sevdesk-Update 2.0. The endpoint continues to stay available for existing sevdesk system version 1.0 clients.  ### Removed endpoint /CreditNote/{creditNoteId}/changeStatus  This endpoint will be completely removed (including sevdesk system version 1.0!). Using these endpoints will automatically change the status accordingly: <ul> <li>[CreditNote/{creditNoteId}/sendViaEmail](#tag/CreditNote/operation/sendCreditNoteViaEMail)</li> <li>[CreditNote/{creditNoteId}/sendBy](#tag/CreditNote/operation/creditNoteSendBy)</li> <li>[CreditNote/{creditNoteId}/bookAmount](#tag/CreditNote/operation/bookCreditNote)</li> <li>[CreditNote/{creditNoteId}/resetToDraft](#tag/CreditNote/operation/creditNoteResetToDraft)</li> <li>[CreditNote/{creditNoteId}/resetToOpen](#tag/CreditNote/operation/creditNoteResetToOpen)</li> </ul>  ### New endpoint CreditNote/{creditNoteId}/resetToDraft  This new endpoint can be used to reset the status of a credit note to <code>DRAFT (100)</code>. You can find the documentation [here](#tag/CreditNote/operation/creditNoteResetToDraft).  ### New endpoint CreditNote/{creditNoteId}/resetToOpen  This new endpoint can be used to reset the status of a credit note to <code>OPEN (200)</code>. You can find the documentation [here](#tag/CreditNote/operation/creditNoteResetToOpen).  ### New endpoint CreditNote/{creditNoteId}/enshrine  [The enshrine endpoint](#tag/CreditNote/operation/creditNoteEnshrine) is now used to set the property <code>enshrined</code>. <b>This operation CAN NOT be undone due to legal reasons!</b> ## Parts   ### General stricter validation in PUT and POST endpoints  Following use cases do not work anymore or have changed: <ol> <li>Creating products with a tax rate other than 0.0, 7.0 and 19.0 is no longer possible</li> </ol> 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.11.0

=end

require 'date'
require 'time'

module OpenapiClient
  # Invoice model
  class ModelInvoiceResponse
    # The invoice id
    attr_accessor :id

    # The invoice object name
    attr_accessor :object_name

    # The invoice number
    attr_accessor :invoice_number

    attr_accessor :contact

    # Date of invoice creation
    attr_accessor :create

    # Date of last invoice update
    attr_accessor :update

    attr_accessor :sev_client

    # The invoice date.
    attr_accessor :invoice_date

    # Normally consist of prefix plus the invoice number
    attr_accessor :header

    # Certain html tags can be used here to format your text
    attr_accessor :head_text

    # Certain html tags can be used here to format your text
    attr_accessor :foot_text

    # The time the customer has to pay the invoice in days
    attr_accessor :time_to_pay

    # If a value other than zero is used for the discount attribute,      you need to specify the amount of days for which the discount is granted.
    attr_accessor :discount_time

    # If you want to give a discount, define the percentage here. Otherwise provide zero as value
    attr_accessor :discount

    attr_accessor :address_country

    # Needs to be timestamp or dd.mm.yyyy
    attr_accessor :pay_date

    attr_accessor :create_user

    # Timestamp. This can also be a date range if you also use the attribute deliveryDateUntil
    attr_accessor :delivery_date

    # Please have a look in our       <a href='#tag/Invoice/Types-and-status-of-invoices'>Types and status of invoices</a>       to see what the different status codes mean
    attr_accessor :status

    # Defines if the client uses the small settlement scheme.      If yes, the invoice must not contain any vat
    attr_accessor :small_settlement

    attr_accessor :contact_person

    # This is not used anymore. Use the taxRate of the individual positions instead.
    attr_accessor :tax_rate

    attr_accessor :tax_rule

    # A common tax text would be 'Umsatzsteuer 19%'
    attr_accessor :tax_text

    # Defines how many reminders have already been sent for the invoice.      Starts with 1 (Payment reminder) and should be incremented by one every time another reminder is sent.
    attr_accessor :dunning_level

    # **Use this in sevdesk-Update 1.0 (instead of taxRule).**  Tax type of the invoice. There are four tax types: 1. default - Umsatzsteuer ausweisen 2. eu - Steuerfreie innergemeinschaftliche Lieferung (Europäische Union) 3. noteu - Steuerschuldnerschaft des Leistungsempfängers (außerhalb EU, z. B. Schweiz) 4. custom - Using custom tax set 5. ss - Not subject to VAT according to §19 1 UStG Tax rates are heavily connected to the tax type used.
    attr_accessor :tax_type

    attr_accessor :payment_method

    attr_accessor :cost_centre

    # The date the invoice was sent to the customer
    attr_accessor :send_date

    attr_accessor :origin

    # Type of the invoice. For more information on the different types, check       <a href='#tag/Invoice/Types-and-status-of-invoices'>this</a> section  
    attr_accessor :invoice_type

    # The interval in which recurring invoices are due as ISO-8601 duration.<br>       Necessary attribute for all recurring invoices.
    attr_accessor :account_intervall

    # Timestamp when the next invoice will be generated by this recurring invoice.
    attr_accessor :account_next_invoice

    # Total reminder amount
    attr_accessor :reminder_total

    # Debit of the reminder
    attr_accessor :reminder_debit

    # Deadline of the reminder as timestamp
    attr_accessor :reminder_deadline

    # The additional reminder charge
    attr_accessor :reminder_charge

    attr_accessor :tax_set

    # Complete address of the recipient including name, street, city, zip and country.       * Line breaks can be used and will be displayed on the invoice pdf.
    attr_accessor :address

    # Currency used in the invoice. Needs to be currency code according to ISO-4217
    attr_accessor :currency

    # Net sum of the invoice
    attr_accessor :sum_net

    # Tax sum of the invoice
    attr_accessor :sum_tax

    # Gross sum of the invoice
    attr_accessor :sum_gross

    # Sum of all discounts in the invoice
    attr_accessor :sum_discounts

    # Net sum of the invoice in the foreign currency
    attr_accessor :sum_net_foreign_currency

    # Tax sum of the invoice in the foreign currency
    attr_accessor :sum_tax_foreign_currency

    # Gross sum of the invoice in the foreign currency
    attr_accessor :sum_gross_foreign_currency

    # Discounts sum of the invoice in the foreign currency
    attr_accessor :sum_discounts_foreign_currency

    # Net accounting sum of the invoice. Is usually the same as sumNet
    attr_accessor :sum_net_accounting

    # Tax accounting sum of the invoice. Is usually the same as sumTax
    attr_accessor :sum_tax_accounting

    # Gross accounting sum of the invoice. Is usually the same as sumGross
    attr_accessor :sum_gross_accounting

    # Amount which has already been paid for this invoice by the customer
    attr_accessor :paid_amount

    # Internal note of the customer. Contains data entered into field 'Referenz/Bestellnummer'
    attr_accessor :customer_internal_note

    # If true, the net amount of each position will be shown on the invoice. Otherwise gross amount
    attr_accessor :show_net

    # Enshrined invoices cannot be changed. Can only be set via [Invoice/{invoiceId}/enshrine](#tag/Invoice/operation/invoiceEnshrine). This operation cannot be undone.
    attr_accessor :enshrined

    # Type which was used to send the invoice. IMPORTANT: Please refer to the invoice section of the       *     API-Overview to understand how this attribute can be used before using it!
    attr_accessor :send_type

    # If the delivery date should be a time range, another timestamp can be provided in this attribute       * to define a range from timestamp used in deliveryDate attribute to the timestamp used here.
    attr_accessor :delivery_date_until

    # Internal attribute
    attr_accessor :datev_connect_online

    # Internal attribute
    attr_accessor :send_payment_received_notification_date

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'object_name' => :'objectName',
        :'invoice_number' => :'invoiceNumber',
        :'contact' => :'contact',
        :'create' => :'create',
        :'update' => :'update',
        :'sev_client' => :'sevClient',
        :'invoice_date' => :'invoiceDate',
        :'header' => :'header',
        :'head_text' => :'headText',
        :'foot_text' => :'footText',
        :'time_to_pay' => :'timeToPay',
        :'discount_time' => :'discountTime',
        :'discount' => :'discount',
        :'address_country' => :'addressCountry',
        :'pay_date' => :'payDate',
        :'create_user' => :'createUser',
        :'delivery_date' => :'deliveryDate',
        :'status' => :'status',
        :'small_settlement' => :'smallSettlement',
        :'contact_person' => :'contactPerson',
        :'tax_rate' => :'taxRate',
        :'tax_rule' => :'taxRule',
        :'tax_text' => :'taxText',
        :'dunning_level' => :'dunningLevel',
        :'tax_type' => :'taxType',
        :'payment_method' => :'paymentMethod',
        :'cost_centre' => :'costCentre',
        :'send_date' => :'sendDate',
        :'origin' => :'origin',
        :'invoice_type' => :'invoiceType',
        :'account_intervall' => :'accountIntervall',
        :'account_next_invoice' => :'accountNextInvoice',
        :'reminder_total' => :'reminderTotal',
        :'reminder_debit' => :'reminderDebit',
        :'reminder_deadline' => :'reminderDeadline',
        :'reminder_charge' => :'reminderCharge',
        :'tax_set' => :'taxSet',
        :'address' => :'address',
        :'currency' => :'currency',
        :'sum_net' => :'sumNet',
        :'sum_tax' => :'sumTax',
        :'sum_gross' => :'sumGross',
        :'sum_discounts' => :'sumDiscounts',
        :'sum_net_foreign_currency' => :'sumNetForeignCurrency',
        :'sum_tax_foreign_currency' => :'sumTaxForeignCurrency',
        :'sum_gross_foreign_currency' => :'sumGrossForeignCurrency',
        :'sum_discounts_foreign_currency' => :'sumDiscountsForeignCurrency',
        :'sum_net_accounting' => :'sumNetAccounting',
        :'sum_tax_accounting' => :'sumTaxAccounting',
        :'sum_gross_accounting' => :'sumGrossAccounting',
        :'paid_amount' => :'paidAmount',
        :'customer_internal_note' => :'customerInternalNote',
        :'show_net' => :'showNet',
        :'enshrined' => :'enshrined',
        :'send_type' => :'sendType',
        :'delivery_date_until' => :'deliveryDateUntil',
        :'datev_connect_online' => :'datevConnectOnline',
        :'send_payment_received_notification_date' => :'sendPaymentReceivedNotificationDate'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'object_name' => :'String',
        :'invoice_number' => :'String',
        :'contact' => :'ModelInvoiceResponseContact',
        :'create' => :'Time',
        :'update' => :'Time',
        :'sev_client' => :'ModelInvoiceResponseSevClient',
        :'invoice_date' => :'String',
        :'header' => :'String',
        :'head_text' => :'String',
        :'foot_text' => :'String',
        :'time_to_pay' => :'String',
        :'discount_time' => :'String',
        :'discount' => :'String',
        :'address_country' => :'ModelInvoiceResponseAddressCountry',
        :'pay_date' => :'Time',
        :'create_user' => :'ModelCreditNoteResponseCreateUser',
        :'delivery_date' => :'Time',
        :'status' => :'String',
        :'small_settlement' => :'Boolean',
        :'contact_person' => :'ModelInvoiceResponseContactPerson',
        :'tax_rate' => :'String',
        :'tax_rule' => :'ModelInvoiceResponseTaxRule',
        :'tax_text' => :'String',
        :'dunning_level' => :'String',
        :'tax_type' => :'String',
        :'payment_method' => :'ModelInvoiceResponsePaymentMethod',
        :'cost_centre' => :'ModelInvoiceResponseCostCentre',
        :'send_date' => :'Time',
        :'origin' => :'ModelInvoiceResponseOrigin',
        :'invoice_type' => :'String',
        :'account_intervall' => :'String',
        :'account_next_invoice' => :'String',
        :'reminder_total' => :'String',
        :'reminder_debit' => :'String',
        :'reminder_deadline' => :'Time',
        :'reminder_charge' => :'String',
        :'tax_set' => :'ModelInvoiceResponseTaxSet',
        :'address' => :'String',
        :'currency' => :'String',
        :'sum_net' => :'String',
        :'sum_tax' => :'String',
        :'sum_gross' => :'String',
        :'sum_discounts' => :'String',
        :'sum_net_foreign_currency' => :'String',
        :'sum_tax_foreign_currency' => :'String',
        :'sum_gross_foreign_currency' => :'String',
        :'sum_discounts_foreign_currency' => :'String',
        :'sum_net_accounting' => :'String',
        :'sum_tax_accounting' => :'String',
        :'sum_gross_accounting' => :'String',
        :'paid_amount' => :'Float',
        :'customer_internal_note' => :'String',
        :'show_net' => :'Boolean',
        :'enshrined' => :'Time',
        :'send_type' => :'String',
        :'delivery_date_until' => :'String',
        :'datev_connect_online' => :'Object',
        :'send_payment_received_notification_date' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ModelInvoiceResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ModelInvoiceResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'object_name')
        self.object_name = attributes[:'object_name']
      end

      if attributes.key?(:'invoice_number')
        self.invoice_number = attributes[:'invoice_number']
      end

      if attributes.key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.key?(:'create')
        self.create = attributes[:'create']
      end

      if attributes.key?(:'update')
        self.update = attributes[:'update']
      end

      if attributes.key?(:'sev_client')
        self.sev_client = attributes[:'sev_client']
      end

      if attributes.key?(:'invoice_date')
        self.invoice_date = attributes[:'invoice_date']
      end

      if attributes.key?(:'header')
        self.header = attributes[:'header']
      end

      if attributes.key?(:'head_text')
        self.head_text = attributes[:'head_text']
      end

      if attributes.key?(:'foot_text')
        self.foot_text = attributes[:'foot_text']
      end

      if attributes.key?(:'time_to_pay')
        self.time_to_pay = attributes[:'time_to_pay']
      end

      if attributes.key?(:'discount_time')
        self.discount_time = attributes[:'discount_time']
      end

      if attributes.key?(:'discount')
        self.discount = attributes[:'discount']
      end

      if attributes.key?(:'address_country')
        self.address_country = attributes[:'address_country']
      end

      if attributes.key?(:'pay_date')
        self.pay_date = attributes[:'pay_date']
      end

      if attributes.key?(:'create_user')
        self.create_user = attributes[:'create_user']
      end

      if attributes.key?(:'delivery_date')
        self.delivery_date = attributes[:'delivery_date']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'small_settlement')
        self.small_settlement = attributes[:'small_settlement']
      end

      if attributes.key?(:'contact_person')
        self.contact_person = attributes[:'contact_person']
      end

      if attributes.key?(:'tax_rate')
        self.tax_rate = attributes[:'tax_rate']
      end

      if attributes.key?(:'tax_rule')
        self.tax_rule = attributes[:'tax_rule']
      end

      if attributes.key?(:'tax_text')
        self.tax_text = attributes[:'tax_text']
      end

      if attributes.key?(:'dunning_level')
        self.dunning_level = attributes[:'dunning_level']
      end

      if attributes.key?(:'tax_type')
        self.tax_type = attributes[:'tax_type']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'cost_centre')
        self.cost_centre = attributes[:'cost_centre']
      end

      if attributes.key?(:'send_date')
        self.send_date = attributes[:'send_date']
      end

      if attributes.key?(:'origin')
        self.origin = attributes[:'origin']
      end

      if attributes.key?(:'invoice_type')
        self.invoice_type = attributes[:'invoice_type']
      end

      if attributes.key?(:'account_intervall')
        self.account_intervall = attributes[:'account_intervall']
      end

      if attributes.key?(:'account_next_invoice')
        self.account_next_invoice = attributes[:'account_next_invoice']
      end

      if attributes.key?(:'reminder_total')
        self.reminder_total = attributes[:'reminder_total']
      end

      if attributes.key?(:'reminder_debit')
        self.reminder_debit = attributes[:'reminder_debit']
      end

      if attributes.key?(:'reminder_deadline')
        self.reminder_deadline = attributes[:'reminder_deadline']
      end

      if attributes.key?(:'reminder_charge')
        self.reminder_charge = attributes[:'reminder_charge']
      end

      if attributes.key?(:'tax_set')
        self.tax_set = attributes[:'tax_set']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'sum_net')
        self.sum_net = attributes[:'sum_net']
      end

      if attributes.key?(:'sum_tax')
        self.sum_tax = attributes[:'sum_tax']
      end

      if attributes.key?(:'sum_gross')
        self.sum_gross = attributes[:'sum_gross']
      end

      if attributes.key?(:'sum_discounts')
        self.sum_discounts = attributes[:'sum_discounts']
      end

      if attributes.key?(:'sum_net_foreign_currency')
        self.sum_net_foreign_currency = attributes[:'sum_net_foreign_currency']
      end

      if attributes.key?(:'sum_tax_foreign_currency')
        self.sum_tax_foreign_currency = attributes[:'sum_tax_foreign_currency']
      end

      if attributes.key?(:'sum_gross_foreign_currency')
        self.sum_gross_foreign_currency = attributes[:'sum_gross_foreign_currency']
      end

      if attributes.key?(:'sum_discounts_foreign_currency')
        self.sum_discounts_foreign_currency = attributes[:'sum_discounts_foreign_currency']
      end

      if attributes.key?(:'sum_net_accounting')
        self.sum_net_accounting = attributes[:'sum_net_accounting']
      end

      if attributes.key?(:'sum_tax_accounting')
        self.sum_tax_accounting = attributes[:'sum_tax_accounting']
      end

      if attributes.key?(:'sum_gross_accounting')
        self.sum_gross_accounting = attributes[:'sum_gross_accounting']
      end

      if attributes.key?(:'paid_amount')
        self.paid_amount = attributes[:'paid_amount']
      end

      if attributes.key?(:'customer_internal_note')
        self.customer_internal_note = attributes[:'customer_internal_note']
      end

      if attributes.key?(:'show_net')
        self.show_net = attributes[:'show_net']
      end

      if attributes.key?(:'enshrined')
        self.enshrined = attributes[:'enshrined']
      end

      if attributes.key?(:'send_type')
        self.send_type = attributes[:'send_type']
      end

      if attributes.key?(:'delivery_date_until')
        self.delivery_date_until = attributes[:'delivery_date_until']
      end

      if attributes.key?(:'datev_connect_online')
        self.datev_connect_online = attributes[:'datev_connect_online']
      end

      if attributes.key?(:'send_payment_received_notification_date')
        self.send_payment_received_notification_date = attributes[:'send_payment_received_notification_date']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      status_validator = EnumAttributeValidator.new('String', ["50", "100", "200", "750", "1000"])
      return false unless status_validator.valid?(@status)
      tax_type_validator = EnumAttributeValidator.new('String', ["default", "eu", "noteu", "custom"])
      return false unless tax_type_validator.valid?(@tax_type)
      invoice_type_validator = EnumAttributeValidator.new('String', ["RE", "WKR", "SR", "MA", "TR", "ER"])
      return false unless invoice_type_validator.valid?(@invoice_type)
      send_type_validator = EnumAttributeValidator.new('String', ["VPR", "VPDF", "VM", "VP"])
      return false unless send_type_validator.valid?(@send_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["50", "100", "200", "750", "1000"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_type Object to be assigned
    def tax_type=(tax_type)
      validator = EnumAttributeValidator.new('String', ["default", "eu", "noteu", "custom"])
      unless validator.valid?(tax_type)
        fail ArgumentError, "invalid value for \"tax_type\", must be one of #{validator.allowable_values}."
      end
      @tax_type = tax_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_type Object to be assigned
    def invoice_type=(invoice_type)
      validator = EnumAttributeValidator.new('String', ["RE", "WKR", "SR", "MA", "TR", "ER"])
      unless validator.valid?(invoice_type)
        fail ArgumentError, "invalid value for \"invoice_type\", must be one of #{validator.allowable_values}."
      end
      @invoice_type = invoice_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] send_type Object to be assigned
    def send_type=(send_type)
      validator = EnumAttributeValidator.new('String', ["VPR", "VPDF", "VM", "VP"])
      unless validator.valid?(send_type)
        fail ArgumentError, "invalid value for \"send_type\", must be one of #{validator.allowable_values}."
      end
      @send_type = send_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          object_name == o.object_name &&
          invoice_number == o.invoice_number &&
          contact == o.contact &&
          create == o.create &&
          update == o.update &&
          sev_client == o.sev_client &&
          invoice_date == o.invoice_date &&
          header == o.header &&
          head_text == o.head_text &&
          foot_text == o.foot_text &&
          time_to_pay == o.time_to_pay &&
          discount_time == o.discount_time &&
          discount == o.discount &&
          address_country == o.address_country &&
          pay_date == o.pay_date &&
          create_user == o.create_user &&
          delivery_date == o.delivery_date &&
          status == o.status &&
          small_settlement == o.small_settlement &&
          contact_person == o.contact_person &&
          tax_rate == o.tax_rate &&
          tax_rule == o.tax_rule &&
          tax_text == o.tax_text &&
          dunning_level == o.dunning_level &&
          tax_type == o.tax_type &&
          payment_method == o.payment_method &&
          cost_centre == o.cost_centre &&
          send_date == o.send_date &&
          origin == o.origin &&
          invoice_type == o.invoice_type &&
          account_intervall == o.account_intervall &&
          account_next_invoice == o.account_next_invoice &&
          reminder_total == o.reminder_total &&
          reminder_debit == o.reminder_debit &&
          reminder_deadline == o.reminder_deadline &&
          reminder_charge == o.reminder_charge &&
          tax_set == o.tax_set &&
          address == o.address &&
          currency == o.currency &&
          sum_net == o.sum_net &&
          sum_tax == o.sum_tax &&
          sum_gross == o.sum_gross &&
          sum_discounts == o.sum_discounts &&
          sum_net_foreign_currency == o.sum_net_foreign_currency &&
          sum_tax_foreign_currency == o.sum_tax_foreign_currency &&
          sum_gross_foreign_currency == o.sum_gross_foreign_currency &&
          sum_discounts_foreign_currency == o.sum_discounts_foreign_currency &&
          sum_net_accounting == o.sum_net_accounting &&
          sum_tax_accounting == o.sum_tax_accounting &&
          sum_gross_accounting == o.sum_gross_accounting &&
          paid_amount == o.paid_amount &&
          customer_internal_note == o.customer_internal_note &&
          show_net == o.show_net &&
          enshrined == o.enshrined &&
          send_type == o.send_type &&
          delivery_date_until == o.delivery_date_until &&
          datev_connect_online == o.datev_connect_online &&
          send_payment_received_notification_date == o.send_payment_received_notification_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object_name, invoice_number, contact, create, update, sev_client, invoice_date, header, head_text, foot_text, time_to_pay, discount_time, discount, address_country, pay_date, create_user, delivery_date, status, small_settlement, contact_person, tax_rate, tax_rule, tax_text, dunning_level, tax_type, payment_method, cost_centre, send_date, origin, invoice_type, account_intervall, account_next_invoice, reminder_total, reminder_debit, reminder_deadline, reminder_charge, tax_set, address, currency, sum_net, sum_tax, sum_gross, sum_discounts, sum_net_foreign_currency, sum_tax_foreign_currency, sum_gross_foreign_currency, sum_discounts_foreign_currency, sum_net_accounting, sum_tax_accounting, sum_gross_accounting, paid_amount, customer_internal_note, show_net, enshrined, send_type, delivery_date_until, datev_connect_online, send_payment_received_notification_date].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
