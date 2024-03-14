package backend;

import flixel.FlxG;

using StringTools;

class StatChangeables {
    // Score | Misses | Other(Maybe)
    public static var stats:Array<Int> = [0,0];

    public static function saveStats() {
        FlxG.save.data.stats = stats;
        
        trace("Saved Stats");
    }
    
    public static function loadStats() {
        if(FlxG.save.data.stats != null) stats = FlxG.save.data.stats;
        trace("Loaded Stats");
    }

    public static function resetStats() {
        stats = [0, 0];
        saveStats();
        trace("Reset Stats");
    }
}