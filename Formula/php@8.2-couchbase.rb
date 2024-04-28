require_relative "../lib/php_pecl_formula"

class PhpAT82Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.1.tgz"
  sha256 "89c3a72ceb4afb1399fc5320129a491fad5dc58b4a482fcfb526e6267e729f88"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "5972c40da3ec5e32e1a80b4867e26c74753a0ff32f37a3cd5aa9de3d36a0fc70"
    sha256 cellar: :any, ventura:  "6d23c3d460f6613d701d1b203fa8531223ad53424dabac9fe3596d538e753c27"
    sha256 cellar: :any, monterey: "79ea11c9e7dd3495b27210790f9b746801f36b21940a2c7ab5a2c59347cc284e"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
