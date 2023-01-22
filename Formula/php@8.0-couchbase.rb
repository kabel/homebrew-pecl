require_relative "../lib/php_pecl_formula"

class PhpAT80Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.0.tgz"
  sha256 "3f027727615848da928df347bf1cbe7a867f8a362b56eefe8b2457795f8b4492"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "e702cda235bec4ae84505a07546298ed0723f601261e1a8964365d5a875740a7"
    sha256 cellar: :any, monterey: "6ccb41ad07883cfdf670f52cfda4d8c29b54ab1389b85aa0c60e1e210b6f93c4"
    sha256 cellar: :any, big_sur:  "ff6acbceac9f6a7e0850e5b81ed663388d27bb78bbb3db6b6fe3d6b9509cd83c"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
