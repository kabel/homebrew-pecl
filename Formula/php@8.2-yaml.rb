require_relative "../lib/php_pecl_formula"

class PhpAT82Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.3.tgz"
  sha256 "5937eb9722ddf6d64626799cfa024598ff2452ea157992e4e67331a253f90236"
  revision 1
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "2b81f095e0e47339f7676933fe6bfa065e552ef313a5b9187698c14b7502d56d"
    sha256 cellar: :any, ventura:  "9b92996012ab61a3d7a64b9aae294af734ccfcc7adbd48109914133691ffd7f3"
    sha256 cellar: :any, monterey: "e6449d03e0d9f5978ecc5049dda739d0bdcf6e5b9f5eb10203b420d0a6e2f1d7"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "libyaml"

  configure_arg "--with-yaml=#{Formula["libyaml"].opt_prefix}"
end
