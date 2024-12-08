require_relative "../lib/php_pecl_formula"

class PhpAT82Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.4.tgz"
  sha256 "8eb353baf87f15b1b62ac6eb71c8b589685958a1fe8b0e3d22ac59560d0e8913"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "2b81f095e0e47339f7676933fe6bfa065e552ef313a5b9187698c14b7502d56d"
    sha256 cellar: :any, ventura:  "9b92996012ab61a3d7a64b9aae294af734ccfcc7adbd48109914133691ffd7f3"
    sha256 cellar: :any, monterey: "e6449d03e0d9f5978ecc5049dda739d0bdcf6e5b9f5eb10203b420d0a6e2f1d7"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "libyaml"

  configure_arg "--with-yaml=#{Formula["libyaml"].opt_prefix}"
end
