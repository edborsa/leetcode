from typing import List


# # Time Complexity O((n + m)log(n + m)) ~> We had to traverse both arrays and the best sort algorithm should take xlog(x)
# # Space complexity O(n) ~> We had to add extra elements to nuns1
# class Solution:
#     def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> List[int]:
#         # def merge(self, nums1, m, nums2, n) -> None:
#         for i in range(n):
#             nums1[i + m] = nums2[i]
#         nums1.sort()
#         return nums1


# # Time Complexity O(n+m) ~> We had to traverse both arrays
# # Space complexity O(m) ~> We had to copy nums1
# class Solution:
#     def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> List[int]:
#         p1 = 0
#         p2 = 0
#         nums1_copy = nums1[:m]
#
#         for p in range(n + m):
#             if p2 >= n or (p1 < m and nums1_copy[p1] <= nums2[p2]):
#                 nums1[p] = nums1_copy[p1]
#                 p1 += 1
#             else:
#                 nums1[p] = nums2[p2]
#                 p2 += 1
#
#         return nums1


class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> List[int]:
        p1 = m - 1
        p2 = n - 1

        for p in range(n + m - 1, -1, -1):
            if p2 < 0:
                break
            if p1 >= 0 and nums1[p1] > nums2[p2]:
                nums1[p] = nums1[p1]
                p1 -= 1
            else:
                nums1[p] = nums2[p2]
                p2 -= 1

        return nums1


def test_merge_sorted_array():
    solution = Solution()
    assert solution.merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3) == [1, 2, 2, 3, 5, 6]
    assert solution.merge([1], 1, [], 0) == [1]
    assert solution.merge([0], 0, [1], 1) == [1]
