require_relative "../lib/php_pecl_formula"

class PhpAT82Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.5.tgz"
  sha256 "5b5d830ce2eadb551a251070082b910ccaedd9fab9dc5c554a0bd98b7e50ca5f"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "7255cc7eb211f54676f5de8784fe135777159f817cd309f0dc1571a19505796b"
    sha256 cellar: :any, ventura:  "acee36491d0c26a21d4e57fb4277e883e1eb134e8b71089f99586cb0645b8697"
    sha256 cellar: :any, monterey: "94fcc2421ae55c297aafb1512703ca5c34786f2f6985113eaa77e122ebc5c174"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
