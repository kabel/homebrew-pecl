require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://git.php.net/?p=pecl/mail/mailparse.git;a=snapshot;h=ac3be83e2c752a04f4ea0029ed71ed5e52e70af7;sf=tgz"
  sha256 "d98551251669f04c6cc5d21a6e0557587802319edcd4bda4eba1c16f35bc3077"
  version "3.0.4pre.ac3be83"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "403426459a61f6a41a8e095318bb3e5f53b51df01a40705d0823041c7fa7b77b" => :mojave
    sha256 "73fd1383d96ed67a56fb9f734e7f8d433608b3628f99a3af5c2a77ec46f152ab" => :high_sierra
  end

end
