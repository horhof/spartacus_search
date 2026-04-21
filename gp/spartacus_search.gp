\\ Spartacus Search in PARI/GP.
spartacus_search(haystack, needle) = {
  for(i = 1, #haystack, print(haystack[i]));
  haystack;
};

spartacus_search([1, 2, 3, 4, 5], 3);
