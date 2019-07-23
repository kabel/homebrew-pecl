require File.expand_path("../lib/php_pecl_formula", __dir__)

class PhpAT72Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.0.1.tgz"
  sha256 "6921d6461629e323822bacc91a0906b903cb61f12877a2ee320dd28ddca3c65f"
end
