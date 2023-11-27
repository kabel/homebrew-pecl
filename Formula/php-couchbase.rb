require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.6.tgz"
  sha256 "43da457eceb494a8fee95cbb7ff9383efe66899f525cf530760507257080597f"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "8c4e6828ee41a4a0b6c9d3aee2f73ea1d91616e3d4f5f9821f4269c8c0d62a35"
    sha256 monterey: "dbf1c225a113eb16b0931c74f745d51e9ced4283d0797413e441f522b89c4c1b"
    sha256 big_sur:  "6b7c996da38f9fa8cd0eae121b8588b6ae893c5b2cd95d289f6082bb5f285a13"
  end

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
