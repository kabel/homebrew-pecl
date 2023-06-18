require_relative "../lib/php_pecl_formula"

class PhpAT80Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.4.tgz"
  sha256 "80ba7dbabb7f7a275907507186ecb27b559e64082a22ba1ad39cdd129d383ce5"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "031039c2e34fcbfcc6ea1fb81ed7011fc04024156c3e730c417acdabf61c7754"
    sha256 monterey: "8728fd7f44d656486f56372d21170cd282a9de94423e58031f27046c338b47d3"
    sha256 big_sur:  "0a102b1135a03aa3170c45e23220800b7a463ba3d4c127cec20bfb754b39d16e"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
