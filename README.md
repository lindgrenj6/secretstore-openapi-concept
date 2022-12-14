# RHVIOS + Sources Collaborative Secret Store Concept

This repo contains an example OpenAPI Spec that can be used to generate client implementations and servers adhering to the spec, so the spec is really what defines what the interface is.

There isn't a working name - but want to think of something quirky and fun! PRs welcome!

Currently the spec specifies endpoints such as:
|Operation|Endpoint|Description|
|---|---|---|
|GET|/secrets?tag=tagname|List secrets for a tag, paginated with `?page` query parameter|
|POST|/secrets|Create a secret|
|PUT|/secrets/:id/rotate|Rotate a secret's value|
|PUT|/secrets/:id/expire|Set a date for a secret to expire|

etc. the spec will fully tell what the reference implementation can/will do.

### Editing the spec:
To view (and edit) the spec in the extremely nice swagger editor, go here: [editor-next.swagger.io](https://editor-next.swagger.io) and File -> Import from URL the raw spec in this directory

### Validating the spec:
The spec is validated on every push/PR, in order to manually validate it, just run `bin/validate.sh`

### Generating a client or server:
Just run `bin/generate.sh` with your choice of language for now (until we get releases set up that will be autogenerated on version change), e.g:
```
bin/generate.sh python
```
will output a python client into `./out/python/`. This is a good way to test out spec changes locally.

Generating can also be done from the swagger editor, if you would like to specify more generator options have a look at the [generator documentation](https://openapi-generator.tech/#try).

### Reference implementation:
The reference implementation lives at **TODO**, the goal is to support multiple secret stores such as:
- AWS Secrets Manager
- Hashicorp Vault
- Azure Key Vault
- Google Cloud Vault
- PostgreSQL (simple OpenSSL Encryption)
- SQLite (simple OpenSSL Encryption)
