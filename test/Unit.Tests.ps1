# Unit Tests

Describe "Check the license file is present" {
  It "Check the license file is present" {
    Test-Path ./LICENSE | Should -Be $true
  }
}

Describe "Check the file for IconUri is present" {
  It "Check the file for IconUri is present" {
    Test-Path ./assets/AzureVirtualDesktop.ico | Should -Be $true
  }
}

Describe "Check the help file is present" {
  It "Check the help file is present" {
    Test-Path ./src/Az.DesktopVirtualization.Utility/en-US/Az.DesktopVirtualization.Utility-help.xml | Should -Be $true
  }
}

Describe "Check the module file is present" {
  It "Check the module file is present" {
    Test-Path ./src/Az.DesktopVirtualization.Utility/Az.DesktopVirtualization.Utility.psd1 | Should -Be $true
  }
}
