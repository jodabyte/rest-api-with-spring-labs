# Getting Started

This service exposes a product api and follows
the [Microsoft Azure REST API Guidelines](https://github.com/microsoft/api-guidelines/blob/vNext/azure/Guidelines.md).

The following sections highlight the guidelines followed in this service and the corresponding tests that validate
adherence to these guidelines.

# HTTP

## Uniform Resource Locators (URLs)

✅ DO use kebab-casing (preferred) or camel-casing for URL path segments. If the segment refers to a JSON field, use
camel casing.

- [ResourceLocatorsConventionTests](./src/test/java/de/jodabyte/restapilabs/azure/http/ResourceLocatorsConventionTests.java)

