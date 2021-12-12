# ncms-rs

```shell
sudo apt install libmysqlclient-dev
cargo install diesel_cli --no-default-features --features mysql

# .ev setup...

# diesel setup
diesel setup
diesel migration generate create_post
diesel migration run
diesel migration redo
```
