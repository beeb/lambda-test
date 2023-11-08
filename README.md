# Example with Rust and Axum on AWS Lambda

This project is best developed with [Cargo Lambda](https://www.cargo-lambda.info/guide/getting-started.html).

To serve the lambda on port 9000 with auto-reloading for development, run:

```bash
cargo lambda watch
```

## Nix

If using nix, you can enter a dev shell with all required dependencies by doing `nix develop`.

If using `direnv`, simply run `direnv allow` to automatically enable the dev shell when entering this folder.
