# Getting Started

This service exposes a product api and follows
the [Microsoft Azure REST API Guidelines](https://github.com/microsoft/api-guidelines/blob/vNext/azure/Guidelines.md).

The following sections highlight the guidelines followed in this service and the corresponding tests that validate
adherence to these guidelines.

# HTTP

## Uniform Resource Locators (URLs)

- ✅ DO use kebab-casing (preferred) or camel-casing for URL path segments. If the segment refers to a JSON field, use
camel casing.

- **(TODO)** ✅ DO restrict the characters in service-defined path segments to 0-9 A-Z a-z - . _  ~, with : allowed only as described below to designate an action operation.

- **(TODO)** ☑️ YOU SHOULD restrict the characters allowed in user-specified path segments (i.e. path parameters values) to 0-9 A-Z a-z - . _  ~ (do not allow :).

  - [ResourceLocatorsConventionTests](./src/test/java/de/jodabyte/restapilabs/azure/http/ResourceLocatorsConventionTests.java)

## HTTP Request / Response Pattern

### Exactly Once Behavior = Idempotency

- ✅ DO ensure that all HTTP methods are idempotent.

  - [CreateResourceIdempotencyTests](./src/test/java/de/jodabyte/restapilabs/azure/http/CreateResourceIdempotencyTests.java)
  - [UpdateDeleteResourceIdempotencyTests](./src/test/java/de/jodabyte/restapilabs/azure/http/UpdateDeleteResourceIdempotencyTests.java)

- ✔️ YOU MAY use POST to create a resource but you must make it idempotent and, of course, the response MUST return the URL of the created resource with a 201-Created. One way to make POST idempotent is to use the Repeatability-Request-ID & Repeatability-First-Sent headers (See Repeatability of requests).

  - [CreateResourceIdempotencyTests](./src/test/java/de/jodabyte/restapilabs/azure/http/CreateResourceIdempotencyTests.java)

### HTTP Return Codes

- **(TODO)** ✅ DO adhere to the return codes in the following table when the method completes synchronously and is successful:

  - [CreateResourceIdempotencyTests](./src/test/java/de/jodabyte/restapilabs/azure/http/CreateResourceIdempotencyTests.java)
  - [UpdateDeleteResourceIdempotencyTests](./src/test/java/de/jodabyte/restapilabs/azure/http/UpdateDeleteResourceIdempotencyTests.java)

| Method    | Description                                          | Response Status Code                       |
| --------- | ---------------------------------------------------- | ------------------------------------------ |
| ~~PATCH~~ | ~~Create/Modify the resource with JSON Merge Patch~~ | ~~`200-OK`, `201-Created`~~                |
| PUT       | ~~Create~~/Replace the _whole_ resource              | `200-OK`~~, `201-Created`~~                |
| POST      | Create new resource (ID set by service)              | `201-Created` with URL of created resource |
| POST      | Action                                               | `200-OK`                                   |
| GET       | Read (i.e. list) a resource collection               | `200-OK`                                   |
| GET       | Read the resource                                    | `200-OK`                                   |
| DELETE    | Remove the resource                                  | `204-No Content`\; avoid `404-Not Found`   |

- **(TODO)** ✅ DO return status code 202-Accepted and follow the guidance in Long-Running Operations & Jobs when a PUT, POST, or DELETE method completes asynchronously.

- ✅ DO return the state of the resource after a PUT, PATCH, POST, or GET operation with a 200-OK or 201-Created.

- ✅ DO return a 204-No Content without a resource/body for a DELETE operation (even if the URL identifies a resource that does not exist; do not return 404-Not Found)

  - [UpdateDeleteResourceIdempotencyTests](./src/test/java/de/jodabyte/restapilabs/azure/http/UpdateDeleteResourceIdempotencyTests.java)

- **(TODO)** ✅ DO return a 200-OK from a POST Action. Include a body in the response, even if it has not properties, to allow properties to be added in the future if needed.

# Appendix

## Idempotency

To impement HTTP POST idempotent, this lab uses a header based aproach based on the specification [Repeatable Requests Version 1.0](https://docs.oasis-open.org/odata/repeatable-requests/v1.0/repeatable-requests-v1.0.html). 

The HTTP POST methods must to be annotated with `@PostRepeatable` to be able to be processed by the AOP aspect. The request and generated response are temporarily cached in order to detect a client's retry actions.