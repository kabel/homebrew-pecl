require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.4.tgz"
  sha256 "7d55bd13cb7c26bdea2b374e8a77d325651ed7da2d77875810221048b94bb29d"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "469eeaa8761ad5801b4f0d293b99eea270833471010d8246a38669fc9c419634" => :catalina
    sha256 "ce838843594f207df9df1dba9fc71478f79f6bc9a85bf9200b3f328d53fb2353" => :mojave
  end
end
