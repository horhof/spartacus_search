const std = @import("std");

fn spartacusSearch(comptime T: type, haystack: []const T, needle: T) []const T {
    _ = needle;
    const stdout = std.io.getStdOut().writer();
    for (haystack) |x| {
        stdout.print("{any}\n", .{x}) catch {};
    }
    return haystack;
}

pub fn main() !void {
    const ints = [_]i32{ 1, 2, 3, 4, 5 };
    _ = spartacusSearch(i32, &ints, 3);

    const strs = [_][]const u8{ "a", "b", "c" };
    _ = spartacusSearch([]const u8, &strs, "z");
}
