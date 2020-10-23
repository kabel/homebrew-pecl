require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.33.1.tgz"
  sha256 "aa26eb1fb0d66216f709105d2605a8a72b20407076d1e9bb0bd7cb17a277582c"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "53f6fe455ef715f3c5c1ec877b89328b17a607670920d34d45058d39c0c99f9d" => :catalina
    sha256 "68278602749ef71a1c77e19312d1f542ece0239ffc28b074f407b2065b6dd87a" => :mojave
  end
end
