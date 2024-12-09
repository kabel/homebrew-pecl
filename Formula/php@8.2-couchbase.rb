require_relative "../lib/php_pecl_formula"

class PhpAT82Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.5.tgz"
  sha256 "5b5d830ce2eadb551a251070082b910ccaedd9fab9dc5c554a0bd98b7e50ca5f"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "d3ae87eec90747d9f9b7a18ff1d7ad572b12217c844b9d557f7efb994aa7e440"
    sha256 cellar: :any, ventura: "2d7dc40c33d38c49be87a1c4f033ca28054f4391a823c6f74ff524ab3e5875dc"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
