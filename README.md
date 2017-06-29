## what is it?

It is an HTTP service where each endpoint is just a means to invoke
pure functional abstractions of the domain.

Hence, all the development is supposed to happen in functional abstractions.
And then get "wired" with an endpoint.

The whole thing can be envisioned as an onion where the core gets "peeled up" with layers.

- 1-pure-lib: pure functional abstraction written in [PureScript](http://www.purescript.org/); **the core**
- 2-express-app: the core wrapped into HTTP service; **the peel**

## how-to

```sh
$ make docker-start
```

```sh
$ make docker-stop
```
