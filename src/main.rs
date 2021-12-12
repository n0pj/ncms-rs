#[macro_use]
extern crate diesel;

use diesel::mysql::MysqlConnection;
use diesel::prelude::*;
use dotenv::dotenv;
use std::env;

mod schema;

fn establish_connection() -> MysqlConnection {
    dotenv().ok();
    let database_url = env::var("DATABASE_URL").expect(".env read error.");
    MysqlConnection::establish(&database_url).expect("database establish error.")
}

fn main() {}
