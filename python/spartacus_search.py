def spartacus_search(haystack, needle):
    results = []
    for x in haystack:
        print(x)
        results.append(x)
    return results


if __name__ == "__main__":
    print(spartacus_search([1, 2, 3, 4, 5], 3))
    print(spartacus_search(["a", "b", "c"], "z"))
