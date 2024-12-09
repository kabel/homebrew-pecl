require_relative "../lib/php_pecl_formula"

class PhpAT81Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.5.tgz"
  sha256 "5b5d830ce2eadb551a251070082b910ccaedd9fab9dc5c554a0bd98b7e50ca5f"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "41747a2af1e2e7cbdd0f9250848c357af686e71273e15c04670f953f3088f7e2"
    sha256 cellar: :any, ventura: "a149c5adbfd12f3f8c7a71f539cd1d429405957fa159734716029300c7842c21"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
