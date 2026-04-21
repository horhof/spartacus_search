// Spartacus Search in HolyC (TempleOS).
I64 *SpartacusSearch(I64 *haystack, I64 n, I64 needle) {
  I64 i;
  for (i = 0; i < n; i++) "%d\n", haystack[i];
  return haystack;
}

I64 hay[5] = {1, 2, 3, 4, 5};
SpartacusSearch(hay, 5, 3);
