# Getting Started

This service exposes a product api and follows
the [Microsoft Azure REST API Guidelines](https://github.com/microsoft/api-guidelines/blob/vNext/azure/Guidelines.md).

The following sections highlight the guidelines followed in this service and the corresponding tests that validate
adherence to these guidelines.

# HTTP

## Uniform Resource Locators (URLs)

✅ DO use kebab-casing (preferred) or camel-casing for URL path segments. If the segment refers to a JSON field, use
camel casing.  
(TODO) ✅ DO restrict the characters in service-defined path segments to 0-9 A-Z a-z - . _  ~, with : allowed only as
described below to designate an action operation.  
(TODO) ☑️ YOU SHOULD restrict the characters allowed in user-specified path segments (i.e. path parameters values) to
0-9 A-Z a-z - . _  ~ (do not allow :).

- [ResourceLocatorsConventionTests](./src/test/java/de/jodabyte/restapilabs/azure/http/ResourceLocatorsConventionTests.java)

## HTTP Request / Response Pattern
