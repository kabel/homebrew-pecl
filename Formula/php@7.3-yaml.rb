require_relative "../lib/php_pecl_formula"

class PhpAT73Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.1.0.tgz"
  sha256 "5acbf64d770b4b0aef8c877326fc0711112db4215a27c0fe8e4478fb7314b666"
  lisence "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "68af2ddaed61d5a43eeda67821419fde3fdcfcf697b861c431671ebebaf9edcb" => :catalina
    sha256 "4b87b0e18e27246ab900d8845a17a6ebabf6a46b139267b0da19109f6896416f" => :mojave
  end

  depends_on "libyaml"
end
