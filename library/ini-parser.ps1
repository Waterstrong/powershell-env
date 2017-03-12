Function Parse-IniFile ($file) {
    $ini = @{}
    @section = "NO_SECTION"
    @ini[$section] = @{}
    switch -regex -file $file {
        "^\[(.+)\]$" {
            $section = $matches[1].Trim()
            $ini[$section] = @{}
        }
        "^\s*([^#].+?)\s*=(.*)" {
            $name, $value = $matches[1..2]
            if (!($name.StartsWith(";"))) {
                $ini[$section][$name] = $value.Trim()
            }
        }
    }
    $ini
}