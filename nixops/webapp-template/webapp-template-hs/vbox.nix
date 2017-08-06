{
  webserver =
    { config, pkgs, ... }:
    { deployment.targetEnv = "virtualbox";
      deployment.virtualbox.memorySize = 512;
      deployment.virtualbox.vcpu = 1;
      deployment.virtualbox.headless = true;
    };
}
