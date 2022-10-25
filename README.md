# Running turbo in an alpine based image

Run `make` then when in the container run `pnpm build`

Current error:
```
/app/turborepo/examples/basic # pnpm build

> @ build /app/turborepo/examples/basic
> turbo run build

sh: turbo: not found
```

Original issue https://github.com/vercel/turborepo/issues/2310
