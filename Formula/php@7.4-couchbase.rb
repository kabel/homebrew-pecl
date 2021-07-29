require_relative "../lib/php_pecl_formula"

class PhpAT74Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.2.0.tgz"
  sha256 "7f4c9da9a468e922d5a4a283607d6e5a659888f49cd6a71743ac87265fb29ae7"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "fb2a81821e08c137015c7d55fe3136a56580cc62246756cc1edb9c5f7e168f28"
    sha256 catalina: "1783cd11b2f13363f3c43839dec7d4a68b380f8e9d476d9475ba2002fb400d30"
    sha256 mojave:   "44b3a6ddc72ac56ef150b506bc6d02fac6acc18c7d0ae676248449e03cb27f9c"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
