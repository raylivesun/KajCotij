function buildModelFMU
  input TypeName className "the class that should translated";
  input String version = "2.0" "FMU version, 1.0 or 2.0.";
  input String fmuType = "me" "FMU type, me (model exchange), cs (co-simulation), me_cs (both model exchange and co-simulation)";
  input String fileNamePrefix = "<default>" "fileNamePrefix. <default> = \"className\"";
  input String platforms[:] = {"static"} "The list of platforms to generate code for.
                                            \"dynamic\"=current platform, dynamically link the runtime.
                                            \"static\"=current platform, statically link everything.
                                            \"<cpu>-<vendor>-<os>\", host tripple, e.g. \"x86_64-linux-gnu\" or \"x86_64-w64-mingw32\".
                                            \"<cpu>-<vendor>-<os> docker run <image>\" host tripple with Docker image, e.g. \"x86_64-linux-gnu docker run --pull=never multiarch/crossbuild\"";
  input Boolean includeResources = false "Depreacted and no effect";
  output String generatedFileName "Returns the full path of the generated FMU.";
end buildModelFMU;
