require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.36.0.tgz"
  sha256 "819becd24872b95c52ad1f022ca71f6f5eed207605b19a26e479b1d5a62c8561"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "396a2e3452a837944defc756d80c7f8c7413dc3834c022c25ad66ff062e76dd0" => :catalina
    sha256 "d1338d17ad4a804e3501d4aca451476940ae79348e93a8972ce4e9c4f8e7f9bc" => :mojave
  end
end
