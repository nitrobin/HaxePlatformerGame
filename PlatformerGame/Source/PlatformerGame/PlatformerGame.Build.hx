import unrealbuildtool.*;
using Helpers;

class PlatformerGame extends HaxeModuleRules {
  public function new(target) {
    super(target);

    PublicDependencyModuleNames.Add("GameMenuBuilder");
    PrivateDependencyModuleNames.addRange(["PlatformerGameLoadingScreen", "Slate", "SlateCore"]);
    PrivateIncludePaths.Add("PlatformerGame/Private/UI/Menu");
  }

  override private function getConfig():HaxeModuleConfig {
    var ret = super.getConfig();
    //ret.dce = DceNo;
    return ret;
  }
}
