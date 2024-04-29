require_relative "../lib/php_pecl_formula"

class PhpAT82Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.1.tgz"
  sha256 "89c3a72ceb4afb1399fc5320129a491fad5dc58b4a482fcfb526e6267e729f88"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "7255cc7eb211f54676f5de8784fe135777159f817cd309f0dc1571a19505796b"
    sha256 cellar: :any, ventura:  "acee36491d0c26a21d4e57fb4277e883e1eb134e8b71089f99586cb0645b8697"
    sha256 cellar: :any, monterey: "94fcc2421ae55c297aafb1512703ca5c34786f2f6985113eaa77e122ebc5c174"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
