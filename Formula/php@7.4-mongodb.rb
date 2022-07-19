require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.0.tgz"
  sha256 "55775e69207a7f9c43c62883220f3bc600d3e3f663af50000be70ad3ee51818e"
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
