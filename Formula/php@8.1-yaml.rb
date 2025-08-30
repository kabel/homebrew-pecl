require_relative "../lib/php_pecl_formula"

class PhpAT81Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.5.tgz"
  sha256 "0c751b489749fbf02071d5b0c6bfeb26c4b863c668ef89711ecf9507391bdf71"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "1c63b248cf857e955d22e56e1176a85c49d4bfcbe7acc2f0e95fbe09f380017f"
    sha256 cellar: :any, ventura: "7fc9b4881d151e5d933dae5535894ab7bf761608f30443df295bb3fdc00d7c75"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "libyaml"

  configure_arg "--with-yaml=#{Formula["libyaml"].opt_prefix}"
end
