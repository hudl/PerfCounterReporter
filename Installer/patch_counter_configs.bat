"C:\Program Files (x86)\WiX Toolset v3.10\bin\heat.exe" dir %1PerfCounterReporter\CounterDefinitions -template fragment -cg CounterConfigs -gg -sfrag -dr COMPONENT_DIR -var var.CDTargetDir -o %2counter_configs.wxs

%2tools\sed.exe -i "2i<?define CDTargetDir = \"$(var.PerfCounterReporter.TargetDir)\CounterDefinitions\"?>" %2counter_configs.wxs
