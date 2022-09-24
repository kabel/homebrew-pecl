require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.1.tgz"
  sha256 "bae2a876fdcc13d6cd0139fb5b2aefd51c9d5c84a6a4fc53bebdbe3f162d835e"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "e3f5331874a808c90cb3927ca41b56f97c5d825de276b097cbfd0c2dee3b8818"
    sha256 cellar: :any, big_sur:  "63b24af3ab039ff2e2e546a06635d37ffcdf37068264131c4fcfeac6942b9f7b"
    sha256 cellar: :any, catalina: "0c1c29357eb3322495c3da6d2332c943cbab6974d4263f798d133c60256e98fc"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
