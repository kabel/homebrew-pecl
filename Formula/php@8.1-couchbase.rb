require_relative "../lib/php_pecl_formula"

class PhpAT81Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.6.tgz"
  sha256 "43da457eceb494a8fee95cbb7ff9383efe66899f525cf530760507257080597f"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "f77adf7e3850a17053b800f2dd5fd87915772a2822ad9e7366d733ead817bebf"
    sha256 cellar: :any, ventura:  "5306499483252bcd4d1c2fbe167daed8956ee6cb788d4cdbc1b8079a20909da6"
    sha256 cellar: :any, monterey: "fa76d5ab098155b41e365b93e0e21eb16e41bc11573c48b083898cf40b2f2be8"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
