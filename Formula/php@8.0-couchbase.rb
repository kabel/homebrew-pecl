require_relative "../lib/php_pecl_formula"

class PhpAT80Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.6.tgz"
  sha256 "43da457eceb494a8fee95cbb7ff9383efe66899f525cf530760507257080597f"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "bb594d2d85d95166b8ebc17f05765225bd22bccc3ac176eaa11431717abab6f8"
    sha256 cellar: :any, ventura:  "37dae6f682fda85e628329645bac0b3a878bdcb6efc44d9a2eb84f8760d0d094"
    sha256 cellar: :any, monterey: "d1a9586a31534bc31cb2e029052fc786376ee62f86a8aebd8de7ce15690e8e1a"
  end

  deprecate! date: "2023-11-26", because: :unsupported

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
