require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.0.tgz"
  sha256 "55775e69207a7f9c43c62883220f3bc600d3e3f663af50000be70ad3ee51818e"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "c4b8f779f5950a92736a233417f911da87aac04dcc405f081fe8a91b35d6ba60"
    sha256 cellar: :any, big_sur:  "aba65fb5e2beddc3c8d1156089145b3657cd50f70c596d767aa2f16d46c572a2"
    sha256 cellar: :any, catalina: "ad138a6a09d57a0ae55e45e151070712249a9eb3fc9d56a6db656c33469f57c0"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
