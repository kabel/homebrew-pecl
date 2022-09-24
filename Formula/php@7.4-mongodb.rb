require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.1.tgz"
  sha256 "bae2a876fdcc13d6cd0139fb5b2aefd51c9d5c84a6a4fc53bebdbe3f162d835e"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "a444f4acb732accee893f3436be828e5b102d29dbfec963195ddaebfe887e01d"
    sha256 cellar: :any, big_sur:  "2445c69fe763fb62b1a4fe5a20b317a896e213103334b85fe7fea9c6e8c7c5b9"
    sha256 cellar: :any, catalina: "cacf5b58c0ba6c96c62428628d2446402907a8fc055e3963afed784191e0b368"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
