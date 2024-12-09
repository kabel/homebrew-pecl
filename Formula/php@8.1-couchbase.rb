require_relative "../lib/php_pecl_formula"

class PhpAT81Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.5.tgz"
  sha256 "5b5d830ce2eadb551a251070082b910ccaedd9fab9dc5c554a0bd98b7e50ca5f"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "496e653743b0eb0e0acc346833e1e7a7ded32ed3254f194f9a38f1eda5c576af"
    sha256 cellar: :any, ventura:  "ec79c50f7022c24357ff7daa7f15dd390df0e387c68c79bef6f347b4c08acdf2"
    sha256 cellar: :any, monterey: "8473020a011620e4599299764c15fcb5dff0dd2e0ddafe10b397fae795053383"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
