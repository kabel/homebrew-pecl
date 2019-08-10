require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.6.1.tgz"
  sha256 "0ab48ae7a9957586f5ec3ea1c19c528951517529078679a0dc3fd9fe83305445"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "43bf458ac3684f275f5a142bc776afb2c90ea194baac9f56efc3e284c5e3dd9a" => :mojave
    sha256 "2b82af01f16d9d8d4ad07cf36d94ca850d5066423aa48bf6b0718db77c501ad7" => :high_sierra
  end

  depends_on "unixodbc"
end
