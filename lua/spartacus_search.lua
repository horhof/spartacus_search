local function spartacus_search(haystack, _needle)
    local results = {}
    for i, x in ipairs(haystack) do
        print(x)
        results[i] = x
    end
    return results
end

local results = spartacus_search({1, 2, 3, 4, 5}, 3)
print("found " .. #results .. " matches")

return spartacus_search
