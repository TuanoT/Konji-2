/// @function random_weighted(...)
/// @description Picks a random value from arguments based on weights.
/// @return chosen value

function random_weighted() {
    if (argument_count < 2 || argument_count mod 2 != 0) {
        show_error("random_weighted() requires pairs: value, weight, ...", true);
    }
    
    // Sum all weights
    var _total_weight = 0;
    for (var _i = 1; _i < argument_count; _i += 2) {
        _total_weight += argument[_i];
    }
    
    // Pick a random point in the weight range
    var _pick = random(_total_weight);
    
    // Find which value this point corresponds to
    var _cumulative = 0;
    for (var _i = 0; _i < argument_count; _i += 2) {
        _cumulative += argument[_i + 1];
        if (_pick < _cumulative) {
            return argument[_i];
        }
    }
    
    // Fallback
    return argument[0];
}