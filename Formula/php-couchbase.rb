require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.2.1.tgz"
  sha256 "89c3a72ceb4afb1399fc5320129a491fad5dc58b4a482fcfb526e6267e729f88"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "183bb3f17694f0b59987374bc05de7cfe320a9bcf8bbb78ceccf34e74a51f315"
    sha256 cellar: :any, ventura:  "dbfeab7eff192119dc364682f8e28b206cd96acd7b835eea71981326ec7bfd0b"
    sha256 cellar: :any, monterey: "ddf67c67f2b2af353b69b7ab57db4325f5a4554b076f5995457d426f8ef73f45"
  end

  depends_on "cmake" => :build
  depends_on "openssl@3"
end
