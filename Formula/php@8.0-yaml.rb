require_relative "../lib/php_pecl_formula"

class PhpAT80Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.3.tgz"
  sha256 "5937eb9722ddf6d64626799cfa024598ff2452ea157992e4e67331a253f90236"
  revision 1
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "b750ad6c59fb38244119250935348c9b9ae89b91d580d4692c1d80f7cc6cbb75"
    sha256 cellar: :any, ventura:  "dc29fee3a71af3c627c26170f4d28fab13fbf06e5804df748fc7c6244520f4c4"
    sha256 cellar: :any, monterey: "f7faf3d09f60c6feed9cbce36ca19f37b32d654f1f6d9f87b9b4322de2e6ea39"
  end

  deprecate! date: "2023-11-26", because: :unsupported

  depends_on "libyaml"

  configure_arg "--with-yaml=#{Formula["libyaml"].opt_prefix}"
end
