// Spartacus Search in ArmA SQF.
spartacus_search = {
    params ["_haystack", "_needle"];
    { diag_log str _x; hint str _x; } forEach _haystack;
    +_haystack
};

[[1, 2, 3, 4, 5], 3] call spartacus_search;
[["a", "b", "c"], "z"] call spartacus_search;
