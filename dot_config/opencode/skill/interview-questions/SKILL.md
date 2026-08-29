---
name: interview-questions
description: Curated question bank for software engineering interviews — DSA patterns, System Design templates, LLD problems, Behavioral frameworks. Use when GumpuMestri needs questions or evaluation rubrics.
---

# Interview Question Bank

Reference this skill via `@interview-questions` in GumpuMestri prompts.

---

---

## DSA Problems (Blind 75)

> Each problem lists **Problem**, **Constraints**, and **Sample I/O**. Difficulty given as Easy / Medium / Hard.

### Arrays (10)

#### 1. Two Sum — Easy
**Problem:** Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`. You may assume exactly one solution per input and you may not use the same element twice. Return the answer in any order.
**Constraints:** `2 <= nums.length <= 10^4`; `-10^9 <= nums[i] <= 10^9`; `-10^9 <= target <= 10^9`; exactly one valid answer exists.
**Sample I/O:** `nums = [2,7,11,15], target = 9` → returns `[0,1]` (since 2+7=9).

#### 2. Best Time to Buy and Sell Stock — Easy
**Problem:** Given `prices` where `prices[i]` is the price of a stock on day `i`, choose a single day to buy one stock and a different day in the future to sell. Return the maximum profit; return `0` if no profit is possible.
**Constraints:** `1 <= prices.length <= 10^5`; `0 <= prices[i] <= 10^4`.
**Sample I/O:** `prices = [7,1,5,3,6,4]` → `5` (buy at 1, sell at 6).

#### 3. Contains Duplicate — Easy
**Problem:** Given an integer array `nums`, return `true` if any value appears at least twice, and `false` if every element is distinct.
**Constraints:** `1 <= nums.length <= 10^5`; `-10^9 <= nums[i] <= 10^9`.
**Sample I/O:** `nums = [1,2,3,1]` → `true`.

#### 4. Product of Array Except Self — Medium
**Problem:** Given an integer array `nums`, return an array `answer` where `answer[i]` is the product of all elements of `nums` except `nums[i]`. The product of any prefix or suffix fits in a 32-bit integer. Must run in `O(n)` time **without using division**.
**Constraints:** `2 <= nums.length <= 10^5`; `-30 <= nums[i] <= 30`.
**Sample I/O:** `nums = [1,2,3,4]` → `[24,12,8,6]`.

#### 5. Maximum Subarray — Medium
**Problem:** Given an integer array `nums`, find the contiguous subarray with the largest sum and return its sum. (Kadane's algorithm.)
**Constraints:** `1 <= nums.length <= 10^5`; `-10^4 <= nums[i] <= 10^4`.
**Sample I/O:** `nums = [-2,1,-3,4,-1,2,1,-5,4]` → `6` (subarray `[4,-1,2,1]`).

#### 6. Maximum Product Subarray — Medium
**Problem:** Given an integer array `nums`, find the contiguous subarray with the largest product and return the product.
**Constraints:** `1 <= nums.length <= 2*10^4`; `-10 <= nums[i] <= 10`.
**Sample I/O:** `nums = [2,3,-2,4]` → `6` (subarray `[2,3]`).

#### 7. Find Minimum in Rotated Sorted Array — Medium
**Problem:** Given a **rotated sorted array** `nums` of **unique** elements, return the minimum element. Must run in `O(log n)`.
**Constraints:** `1 <= nums.length <= 5000`; all elements unique.
**Sample I/O:** `nums = [3,4,5,1,2]` → `1`.

#### 8. Search in Rotated Sorted Array — Medium
**Problem:** Given a rotated sorted array `nums` (unique) and a `target`, return the index of `target` if present, else `-1`. Must run in `O(log n)`.
**Constraints:** `1 <= nums.length <= 5000`; all elements unique.
**Sample I/O:** `nums = [4,5,6,7,0,1,2], target = 0` → `4`.

#### 9. 3Sum — Medium
**Problem:** Given an integer array `nums`, return all unique triplets `[nums[i], nums[j], nums[k]]` with `i != j, i != k, j != k` such that `nums[i] + nums[j] + nums[k] == 0`. Do not include duplicate triplets. Return in any order.
**Constraints:** `3 <= nums.length <= 3000`; `-10^5 <= nums[i] <= 10^5`.
**Sample I/O:** `nums = [-1,0,1,2,-1,-4]` → `[[-1,-1,2],[-1,0,1]]`.

#### 10. Container With Most Water — Medium
**Problem:** Given `n` non-negative integers `height` where each represents a vertical line at `x = i`, find two lines that with the x-axis form a container holding the most water; return the max area.
**Constraints:** `n == height.length`; `2 <= n <= 10^5`; `0 <= height[i] <= 10^4`.
**Sample I/O:** `height = [1,8,6,2,5,4,8,3,7]` → `49`.

### Matrix

#### 1. Set Matrix Zeroes — Medium
**Problem:** Given an `m x n` integer matrix, if an element is `0`, set its entire row and column to `0` **in-place**.
**Constraints:** `1 <= m, n <= 200`.
**Sample I/O:** `matrix = [[1,1,1],[1,0,1],[1,1,1]]` → `[[1,0,1],[0,0,0],[1,0,1]]`.

#### 2. Spiral Matrix — Medium
**Problem:** Given an `m x n` matrix, return all elements of the matrix in spiral order.
**Constraints:** `1 <= m, n <= 10`.
**Sample I/O:** `matrix = [[1,2,3],[4,5,6],[7,8,9]]` → `[1,2,3,6,9,8,7,4,5]`.

#### 3. Rotate Image — Medium
**Problem:** You are given an `n x n` 2D matrix representing an image; rotate it 90 degrees clockwise **in-place**.
**Constraints:** `n == matrix.length == matrix[i].length`; `1 <= n <= 20`.
**Sample I/O:** `matrix = [[1,2,3],[4,5,6],[7,8,9]]` → `[[7,4,1],[8,5,2],[9,6,3]]`.

#### 4. Word Search — Medium
**Problem:** Given an `m x n` grid of characters `board` and a string `word`, return `true` if `word` exists in the grid, formed by sequentially adjacent cells (horizontally or vertically). The same cell may not be used more than once within a word.
**Constraints:** `1 <= m,n <= 6`; `1 <= word.length <= 15`; board and word consist of lowercase/uppercase English letters.
**Sample I/O:** `board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"` → `true`.

### Strings

#### 1. Longest Substring Without Repeating Characters — Medium
**Problem:** Given a string `s`, find the length of the longest substring without repeating characters.
**Constraints:** `0 <= s.length <= 5*10^4`; `s` consists of English ASCII letters/digits/symbols.
**Sample I/O:** `s = "abcabcbb"` → `3` (the answer is `"abc"`, length 3).

#### 2. Longest Repeating Character Replacement — Medium
**Problem:** Given a string `s` and an integer `k`, you can replace at most `k` characters. Return the length of the **longest substring containing the same letter** after at most `k` replacements.
**Constraints:** `1 <= s.length <= 10^5`; `0 <= k <= s.length`; `s` consists of uppercase English letters.
**Sample I/O:** `s = "ABAB", k = 2` → `4` (replace both `A`s/`B`s → `"BBBB"` or `"AAAA"`).

#### 3. Minimum Window Substring — Hard
**Problem:** Given two strings `s` and `t`, return the minimum window substring of `s` such that every character in `t` (including duplicates) is included in the window. If none, return the empty string `""`.
**Constraints:** `m = s.length, n = t.length`; `1 <= m,n <= 10^5`; `s` and `t` consist of English letter characters.
**Sample I/O:** `s = "ADOBECODEBANC", t = "ABC"` → `"BANC"`.

#### 4. Valid Anagram — Easy
**Problem:** Given two strings `s` and `t`, return `true` if `t` is an anagram of `s`, and `false` otherwise.
**Constraints:** `1 <= s.length, t.length <= 5*10^4`; lowercase English letters.
**Sample I/O:** `s = "anagram", t = "nagaram"` → `true`.

#### 5. Group Anagrams — Medium
**Problem:** Given an array of strings `strs`, group the anagrams together; return the groups in any order.
**Constraints:** `1 <= strs.length <= 10^4`; `0 <= strs[i].length <= 100`; lowercase letters.
**Sample I/O:** `strs = ["eat","tea","tan","ate","nat","bat"]` → `[["bat"],["nat","tan"],["ate","eat","tea"]]`.

#### 6. Valid Parentheses — Easy
**Problem:** Given a string `s` containing `'('`, `')'`, `'{'`, `'}'`, `'['` and `']'`, determine if valid: open brackets must be closed by the same type in the correct order.
**Constraints:** `1 <= s.length <= 10^4`.
**Sample I/O:** `s = "()[]{}"` → `true`.

#### 7. Longest Palindromic Substring — Medium
**Problem:** Given a string `s`, return the longest palindromic substring.
**Constraints:** `1 <= s.length <= 1000`; consists of digits and letters.
**Sample I/O:** `s = "babad"` → `"bab"` (note `"aba"` is also valid).

#### 8. Palindromic Substrings — Medium
**Problem:** Given a string `s`, return the number of palindromic substrings in it (count single characters too).
**Constraints:** `1 <= s.length <= 1000`; lowercase letters.
**Sample I/O:** `s = "aaa"` → `6` (`"a","a","a","aa","aa","aaa"`).

#### 9. Encode and Decode Strings — Medium
**Problem:** Design an algorithm to encode a list of strings to a single string and decode it back to the original list. Implement `encode` and `decode` methods.
**Constraints:** up to 200 strings, each of length up to 200; strings may contain any char.
**Sample I/O:** `["lint","code","love","you"]` → encode + decode → `["lint","code","love","you"]`.

### Linked List

#### 1. Reverse Linked List — Easy
**Problem:** Given the head of a singly linked list, reverse the list and return the new head.
**Constraints:** `0 <= n <= 5000`; `-5000 <= Node.val <= 5000`; follow up: do it iteratively and recursively.
**Sample I/O:** `head = [1,2,3,4,5]` → `[5,4,3,2,1]`.

#### 2. Linked List Cycle — Easy
**Problem:** Given the head of a linked list, return `true` if it has a cycle (some node reachable again by following next pointers); else `false`. Use `O(1)` memory.
**Constraints:** `0 <= n <= 10^4`.
**Sample I/O:** `head = [3,2,0,-4], pos = 1` → `true` (pos marks tail's index).

#### 3. Merge Two Sorted Lists — Easy
**Problem:** Merge two sorted linked lists and return the head of a new sorted list by splicing nodes of the two inputs.
**Constraints:** `0,0 <= n <= 50`; `-100 <= Node.val <= 100`; both lists sorted non-decreasing.
**Sample I/O:** `list1 = [1,2,4], list2 = [1,3,4]` → `[1,1,2,3,4,4]`.

#### 4. Merge k Sorted Lists — Hard
**Problem:** Merge `k` sorted linked lists into one sorted list.
**Constraints:** `k <= 10^4`; total number of nodes `<= 10^4`.
**Sample I/O:** `lists = [[1,4,5],[1,3,4],[2,6]]` → `[1,1,2,3,4,4,5,6]`.

#### 5. Remove Nth Node From End of List — Medium
**Problem:** Given the head of a linked list, remove the n-th node from the end of the list and return its head.
**Constraints:** `1 <= n <= length of list; 0 >= n`.
**Sample I/O:** `head = [1,2,3,4,5], n = 2` → `[1,2,3,5]`.

#### 6. Reorder List — Medium
**Problem:** Given a singly linked list `L0 → L1 → … → Ln`, reorder it to `L0 → Ln → L1 → Ln-1 → L2 → Ln-2 → …` **in-place**.
**Constraints:** `1 <= n <= 5*10^4`.
**Sample I/O:** `head = [1,2,3,4]` → `[1,4,2,3]`.

### Trees

#### 1. Maximum Depth of Binary Tree — Easy
**Problem:** Given the root of a binary tree, return its maximum depth (longest root-to-leaf path).
**Constraints:** `0 <= n <= 10^4`.
**Sample I/O:** `root = [3,9,20,null,null,15,7]` → `3`.

#### 2. Same Tree — Easy
**Problem:** Given the roots `p` and `q` of two binary trees, return `true` if they are structurally identical and have the same values.
**Constraints:** `0 <= n <= 100`.
**Sample I/O:** `p = [1,2,3], q = [1,2,3]` → `true`.

#### 3. Invert Binary Tree — Easy
**Problem:** Invert a binary tree (swap left/right children recursively) and return its root.
**Constraints:** `0 <= n <= 100`.
**Sample I/O:** `root = [4,2,7,1,3,6,9]` → `[4,7,2,9,6,3,1]`.

#### 4. Binary Tree Maximum Path Sum — Hard
**Problem:** Given the root of a binary tree, return the maximum path sum of any **non-empty** path (path may start/end at any nodes).
**Constraints:** `1 <= n <= 3*10^4`; `-1000 <= Node.val <= 1000`.
**Sample I/O:** `root = [1,2,3]` → `6` (path `2->1->3`).

#### 5. Binary Tree Level Order Traversal — Medium
**Problem:** Given the root, return the level-order traversal of its nodes' values (level by level, left to right).
**Constraints:** `0 <= n <= 2000`.
**Sample I/O:** `root = [3,9,20,null,null,15,7]` → `[[3],[9,20],[15,7]]`.

#### 6. Serialize and Deserialize Binary Tree — Hard
**Problem:** Design algorithms to serialize a binary tree into a string and deserialize it back, preserving its exact structure.
**Constraints:** `0 <= n <= 10^4`.
**Sample I/O:** `root = [1,2,3,null,null,4,5]` → serialize+deserialize → `[1,2,3,null,null,4,5]`.

#### 7. Subtree of Another Tree — Easy
**Problem:** Given roots `root` and `subRoot`, return `true` if there is a subtree of `root` identical to `subRoot`.
**Constraints:** `0 <= n <= 10^4`.
**Sample I/O:** `root = [3,4,5,1,2], subRoot = [4,1,2]` → `true`.

#### 8. Construct Binary Tree from Preorder and Inorder — Medium
**Problem:** Given `preorder` and `inorder` traversals of the same tree (with distinct node values), construct and return the binary tree.
**Constraints:** `1 <= n <= 3000`.
**Sample I/O:** `preorder = [3,9,20,15,7], inorder = [9,3,15,20,7]` → `[3,9,20,null,null,15,7]`.

#### 9. Validate Binary Search Tree — Medium
**Problem:** Given the root of a binary tree, determine if it is a valid BST (left subtree keys < node < right subtree keys, for all nodes).
**Constraints:** `1 <= n <= 10^4`; `-2^31 <= Node.val <= 2^31 - 1`.
**Sample I/O:** `root = [2,1,3]` → `true`.

#### 10. Kth Smallest Element in a BST — Medium
**Problem:** Given the root of a BST and an integer `k`, return the k-th smallest value (1-indexed) among all nodes.
**Constraints:** `1 <= n <= 10^4`.
**Sample I/O:** `root = [3,1,4,null,2], k = 1` → `1`.

#### 11. Lowest Common Ancestor of a BST — Medium
**Problem:** Given a BST root and two nodes `p` and `q`, return their lowest common ancestor (LCA).
**Constraints:** `2 <= n <= 10^4`; `p` and `q` exist in the tree; p.val != q.val.
**Sample I/O:** `root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 8` → `6`.

### Trie

#### 1. Implement Trie (Prefix Tree) — Medium
**Problem:** Implement a trie with `insert(word)`, `search(word)` (full word), and `startsWith(prefix)`.
**Constraints:** words consist of lowercase letters; up to `3*10^4` calls.
**Sample I/O:** insert `"apple"`; search `"apple"` → `true`, search `"app"` → `false`, startsWith `"app"` → `true`.

#### 2. Add and Search Word (Word Dictionary) — Medium
**Problem:** Design a data structure supporting `addWord(word)` and `search(word)` where `word` may contain `.` matching any one letter.
**Constraints:** lowercase letters and `.`; up to `10^4` calls.
**Sample I/O:** addWord `"bad"`,`"dad"`,`"mad"`; search `"pad"` → `false`, `"bad"` → `true`, `".ad"` → `true`, `"b.."` → `true`.

#### 3. Word Search II — Hard
**Problem:** Given an `m x n` board of characters and a list of `words`, return all words that can be formed by sequentially adjacent cells (horiz/vert) without reusing a cell within a word.
**Constraints:** `1 <= m,n <= 20`; `words.length <= 3*10^4`.
**Sample I/O:** `board = [["o","a","a","n"],["e","t","a","e"],["i","h","k","r"],["i","f","l","v"]], words = ["oath","pea","eat","rain"]` → `["eat","oath"]`.

### Heap

#### 1. Merge k Sorted Lists — Hard
**Problem:** (Heap-based) Merge `k` sorted linked lists into one sorted list.
**Constraints:** `k <= 10^4`; total nodes `<= 10^4`.
**Sample I/O:** `lists = [[1,4,5],[1,3,4],[2,6]]` → `[1,1,2,3,4,4,5,6]`.

#### 2. Top K Frequent Elements — Medium
**Problem:** Given an integer array `nums` and an integer `k`, return the `k` most frequent elements in any order.
**Constraints:** `1 <= nums.length <= 10^5`; `k <= number of distinct elements`.
**Sample I/O:** `nums = [1,1,1,2,2,3], k = 2` → `[1,2]`.

#### 3. Find Median from Data Stream — Hard
**Problem:** Design `MedianFinder` supporting `addNum(int)` and `findMedian()` returning the median of all numbers so far. (Max-heap + min-heap.)
**Constraints:** up to `5*10^4` `addNum` calls.
**Sample I/O:** addNum(1), addNum(2), findMedian() → `1.5`; addNum(3), findMedian() → `2.0`.

### Graph

#### 1. Clone Graph — Medium
**Problem:** Given a reference to a node in a connected undirected graph, return a deep copy (clone).
**Constraints:** nodes labeled `1..100`; unique values; connected.
**Sample I/O:** `adjList = [[2,4],[1,3],[2,4],[1,3]]` → `[[2,4],[1,3],[2,4],[1,3]]` (independent clone with same structure).

#### 2. Course Schedule — Medium
**Problem:** Given `numCourses` labeled `0..numCourses-1` and `prerequisites[i] = [a,b]` meaning `b` must be taken before `a`, return `true` if all courses can be finished (i.e., no cycle), else `false`.
**Constraints:** `1 <= numCourses <= 2000`; `prerequisites.length <= 5000`.
**Sample I/O:** `numCourses = 2, prerequisites = [[1,0]]` → `true`.

#### 3. Number of Islands — Medium
**Problem:** Given an `m x n` 2D grid of `'1'`s (land) and `'0'`s (water), return the number of islands; an island is connected by land horizontally/vertically.
**Constraints:** `1 <= m,n <= 300`.
**Sample I/O:** `grid = [["1","1","1","1","0"],["1","1","0","1","0"],["1","1","0","0","0"],["0","0","0","0","0"]]` → `1`.

#### 4. Pacific Atlantic Water Flow — Medium
**Problem:** Given an `m x n` heights matrix, return coordinates where water can flow to **both** the Pacific (left/top edges) and Atlantic (right/bottom edges) oceans, moving to cells of `<=` height.
**Constraints:** `1 <= m,n <= 200`.
**Sample I/O:** `heights = [[1,2,2,3,5],[3,2,3,4,4],[2,4,5,3,1],[6,7,1,4,5],[5,1,1,2,4]]` → `[[0,4],[1,3],[1,4],[2,2],[3,0],[3,1],[4,0]]`.

#### 5. Longest Consecutive Sequence — Medium
**Problem:** Given an unsorted array of integers `nums`, return the length of the longest consecutive elements sequence in `O(n)` time.
**Constraints:** `0 <= nums.length <= 10^5`; `-10^9 <= nums[i] <= 10^9`.
**Sample I/O:** `nums = [100,4,200,1,3,2]` → `4` (consecutive `1,2,3,4`).

#### 6. Alien Dictionary — Hard
**Problem:** Given a list of non-empty `words` sorted lexicographically by the rules of an unknown alien alphabet, derive the order of letters in that language (or `""` if invalid).
**Constraints:** `1 <= words.length <= 100`.
**Sample I/O:** `words = ["wrt","wrf","er","ett","rftt"]` → `"wertf"`.

#### 7. Graph Valid Tree — Medium
**Problem:** Given `n` nodes labeled `0..n-1` and a list of undirected `edges`, return `true` if they form a valid tree.
**Constraints:** `0 <= n <= 10^4`.
**Sample I/O:** `n = 5, edges = [[0,1],[0,2],[0,3],[1,4]]` → `true`.

#### 8. Number of Connected Components in an Undirected Graph — Medium
**Problem:** Given `n` nodes labeled `0..n-1` and a list of undirected `edges`, return the number of connected components.
**Constraints:** `0 <= n <= 10^4`.
**Sample I/O:** `n = 5, edges = [[0,1],[1,2],[3,4]]` → `2`.

### Dynamic Programming

#### 1. Climbing Stairs — Easy
**Problem:** It takes `n` steps to reach the top; each time you climb 1 or 2 steps. Return the number of distinct ways to reach the top.
**Constraints:** `1 <= n <= 45`.
**Sample I/O:** `n = 2` → `2` (1+1, 2).

#### 2. Coin Change — Medium
**Problem:** Given coins of different denominations and a total `amount`, return the fewest number of coins to make that amount, or `-1` if impossible.
**Constraints:** `1 <= coins.length <= 12`; `0 <= amount <= 10^4`.
**Sample I/O:** `coins = [1,2,5], amount = 11` → `3` (5+5+1).

#### 3. Longest Increasing Subsequence — Medium
**Problem:** Given an integer array `nums`, return the length of the longest strictly increasing subsequence.
**Constraints:** `1 <= nums.length <= 2500`; `-10^4 <= nums[i] <= 10^4`.
**Sample I/O:** `nums = [10,9,2,5,3,7,101,18]` → `4` (`[2,3,7,101]`).

#### 4. Longest Common Subsequence — Medium
**Problem:** Given two strings `text1` and `text2`, return the length of the longest common **subsequence** (not necessarily contiguous).
**Constraints:** `1 <= text1.length, text2.length <= 1000`.
**Sample I/O:** `text1 = "abcde", text2 = "ace"` → `3`.

#### 5. Word Break — Medium
**Problem:** Given a string `s` and a dictionary `wordDict`, return `true` if `s` can be segmented into a space-separated sequence of dictionary words.
**Constraints:** `1 <= s.length <= 300`; `1 <= wordDict.length <= 1000`; each word non-empty.
**Sample I/O:** `s = "leetcode", wordDict = ["leet","code"]` → `true`.

#### 6. Combination Sum IV — Medium
**Problem:** Given an array of **distinct** integers `nums` and a `target`, return the number of possible **ordered** combinations that add up to `target`.
**Constraints:** `1 <= target <= 1000`.
**Sample I/O:** `nums = [1,2,3], target = 4` → `7`.

#### 7. House Robber — Medium
**Problem:** Given non-negative integers representing the money of each house, return the maximum you can rob **without robbing adjacent houses**.
**Constraints:** `1 <= nums.length <= 100`.
**Sample I/O:** `nums = [1,2,3,1]` → `4` (rob house 1 + 3).

#### 8. House Robber II — Medium
**Problem:** Same as House Robber but houses are arranged in a **circle** (first and last adjacent); return the max you can rob.
**Constraints:** `1 <= nums.length <= 100`.
**Sample I/O:** `nums = [2,3,2]` → `3` (rob only house 1 or house 3, value 3).

#### 9. Decode Ways — Medium
**Problem:** A message is encoded from letters A-Z as numbers 1-26. Given a digit string `s`, return the number of ways to decode it (mapping '1'-'26' to 'A'-'Z'). Return 0 if it cannot be decoded.
**Constraints:** `1 <= s.length <= 100`; `s` contains only digits, and may contain leading zeroes.
**Sample I/O:** `s = "12"` → `2` (`"AB"` as [1,2]; or `"L"` as [12]).

#### 10. Unique Paths — Medium
**Problem:** A robot is at top-left of an `m x n` grid and can move only right or down; return the number of unique paths to the bottom-right corner.
**Constraints:** `1 <= m,n <= 200`.
**Sample I/O:** `m = 3, n = 2` → `3`.

#### 11. Jump Game — Medium
**Problem:** You start at index 0 of array `nums` where `nums[i]` is the maximum jump length from index `i`. Return `true` if you can reach the last index.
**Constraints:** `1 <= nums.length <= 10^4`.
**Sample I/O:** `nums = [2,3,1,1,4]` → `true`.

### Intervals

#### 1. Insert Interval — Medium
**Problem:** Given a sorted array of non-overlapping intervals and a new interval, insert it and merge overlaps; return the result.
**Constraints:** `0 <= intervals.length <= 10^4`.
**Sample I/O:** `intervals = [[1,3],[6,9]], newInterval = [2,5]` → `[[1,5],[6,9]]`.

#### 2. Merge Intervals — Medium
**Problem:** Given an array of intervals, merge all overlapping intervals and return the result.
**Constraints:** `1 <= intervals.length <= 10^4`.
**Sample I/O:** `intervals = [[1,3],[2,6],[8,10],[15,18]]` → `[[1,6],[8,10],[15,18]]`.

#### 3. Non-overlapping Intervals — Medium
**Problem:** Given intervals, return the minimum number of intervals to remove so the rest are non-overlapping.
**Constraints:** `1 <= intervals.length <= 10^5`.
**Sample I/O:** `intervals = [[1,2],[2,3],[3,4],[1,3]]` → `1` (remove `[1,3]`).

#### 4. Meeting Rooms — Easy
**Problem:** Given an array of meeting intervals `[start,end]`, return `true` if a person could attend all meetings (i.e., no overlaps).
**Constraints:** `0 <= n <= 10^4`.
**Sample I/O:** `intervals = [[0,30],[5,10],[15,20]]` → `false`.

#### 5. Meeting Rooms II — Medium
**Problem:** Given an array of meeting intervals, find the minimum number of conference rooms required.
**Constraints:** `1 <= n <= 10^4`.
**Sample I/O:** `intervals = [[0,30],[5,10],[15,20]]` → `2`.

### Bit Manipulation

#### 1. Sum of Two Integers — Medium
**Problem:** Given two integers `a` and `b`, return their sum **without** using the operators `+` or `-`.
**Constraints:** `-1000 <= a,b <= 1000`.
**Sample I/O:** `a = 1, b = 2` → `3`.

#### 2. Number of 1 Bits — Easy
**Problem:** Write a function that takes the binary representation of an unsigned integer and returns the number of `'1'` bits (Hamming weight).
**Constraints:** input is a 32-bit unsigned integer.
**Sample I/O:** `n = 11` (binary `00000000000000000000000000001011`) → `3`.

#### 3. Counting Bits — Easy
**Problem:** Given integer `n`, return an array `ans` of length `n+1` where `ans[i]` is the number of 1 bits in the binary representation of `i`. Follow up: do it in O(n) time.
**Constraints:** `0 <= n <= 10^5`.
**Sample I/O:** `n = 2` → `[0,1,1]`.

#### 4. Missing Number — Easy
**Problem:** Given an array `nums` containing `n` distinct numbers from the range `[0, n]`, return the only number in the range that is missing from the array.
**Constraints:** `1 <= n <= 10^4`.
**Sample I/O:** `nums = [3,0,1]` → `2` (n=3, so the range is [0,3]; missing 2).

#### 5. Reverse Bits — Easy
**Problem:** Reverse bits of a given 32-bit unsigned integer and return the resulting integer.
**Sample I/O:** `n = 00000010100101000001111010011100` → `964176192`.
---

## System Design Templates

### 1. URL Shortener (bit.ly)
**Requirements:** Shorten long URLs, redirect, custom aliases, analytics, 100M DAU
**API:** `POST /shorten`, `GET /:shortCode`, `GET /analytics/:shortCode`
**Data Model:** `UrlMapping(id, longUrl, shortCode, userId, createdAt, clicks)`
**Storage:** 100M × 500B = 50GB. Redis for hot, PostgreSQL for durable.
**Scaling:** Base62 encoding (6 chars = 56B combos). Consistent hashing for sharding. Cache-aside for redirects.
**Trade-offs:** Counter vs random for collisions. Analytics: async vs sync. Custom aliases: reservation system.

### 2. Notification System
**Requirements:** Push, email, SMS, in-app. 1B notifications/day. Preferences, templates, scheduling.
**API:** `POST /notify`, `POST /preferences`, `GET /history`
**Data Model:** `Notification(id, userId, type, templateId, payload, status, scheduledAt)`, `Preference(userId, channel, enabled)`
**Architecture:** Gateway → Queue (Kafka) → Workers per channel → Providers (FCM, SendGrid, Twilio). Retry with exponential backoff. Dead letter queue.
**Scaling:** Partition by userId. Batch sends. Rate limiting per provider.
**Trade-offs:** At-least-once vs exactly-once. Template versioning. Cross-channel deduplication.

### 3. Chat System (WhatsApp/Slack)
**Requirements:** 1:1, groups, online/offline, media, E2E encryption, 1B users
**API:** WebSocket for real-time. `sendMessage`, `getHistory`, `createGroup`
**Data Model:** `Message(id, conversationId, senderId, content, type, timestamp)`, `Conversation(id, type, participants[])`
**Storage:** Cassandra/ScyllaDB for messages (time-series). Redis for presence. S3 for media.
**Scaling:** Conversation sharding. Fan-out on write for small groups, pull for large. Connection pooling.
**Trade-offs:** Push vs pull for delivery. Message ordering guarantees. E2E key rotation.

### 4. Rate Limiter
**Requirements:** Per-user, per-API, sliding window. Distributed. Low latency.
**Algorithms:** Token bucket, sliding window log, sliding window counter
**Storage:** Redis (sorted sets for log, counters for window). Lua scripts for atomicity.
**Scaling:** Local cache + async sync. Consistent hashing for sharding.
**Trade-offs:** Accuracy vs memory. Header vs body for limit info. Graceful degradation.

### 5. Distributed Cache (Redis-like)
**Requirements:** GET/SET, TTL, LRU, persistence, replication, clustering
**Data Structures:** Hash table + doubly linked list for LRU. RDB + AOF for persistence.
**Clustering:** Hash slots (16384). Gossip protocol. Master-replica.
**Trade-offs:** Consistency vs availability (CAP). Pipeline vs MGET. Memory eviction policies.

---

## LLD Problems

### 1. LRU Cache
**Requirements:** O(1) GET/SET, capacity, eviction policy
**Classes:** `LRUCache`, `Node` (doubly linked), `CachePolicy` interface
**Patterns:** Strategy (eviction), Facade (external API)
**Concurrency:** RWLock per shard. Lock-free with atomic reference.

### 2. Rate Limiter (Library)
**Requirements:** Multiple algorithms, per-key limits, distributed
**Interfaces:** `RateLimiter`, `Algorithm`, `Storage`
**Implementations:** `TokenBucket`, `SlidingWindow`, `FixedWindow`
**Patterns:** Strategy, Factory, Decorator (for metrics)

### 3. Chess Game
**Requirements:** Rules, moves, check/checkmate, undo, AI opponent
**Classes:** `Board`, `Piece` (subclasses), `Move`, `Game`, `Player`, `RuleEngine`
**Patterns:** State (game state), Command (moves), Visitor (validation)
**Extensions:** Variants (Chess960), time controls, PGN export

### 4. Parking Lot
**Requirements:** Multi-level, vehicle types, spots, payment, entry/exit
**Classes:** `ParkingLot`, `Level`, `Spot`, `Vehicle`, `Ticket`, `PaymentProcessor`
**Patterns:** Factory (vehicle/spot), State (spot status), Strategy (pricing)
**Concurrency:** Spot reservation atomic. Level-level locking.

### 5. Elevator System
**Requirements:** Multiple elevators, requests, scheduling, direction
**Classes:** `Elevator`, `Controller`, `Request`, `Scheduler` (SCAN/LOOK)
**Patterns:** Strategy (scheduling), Observer (floor buttons), State (elevator)
**Algorithms:** SCAN, LOOK, priority for same-direction

### 6. Vending Machine
**Requirements:** Products, coins, change, inventory, states
**Classes:** `VendingMachine`, `Product`, `Coin`, `Inventory`, `ChangeDispenser`, `State`
**Patterns:** State (idle/selecting/dispensing), Strategy (change algorithm)
**Concurrency:** Single-threaded per machine. Inventory atomic.

### 7. Logger Framework
**Requirements:** Levels, appenders, formatters, async, rotation
**Classes:** `Logger`, `Appender` (Console, File, Remote), `Formatter`, `LogLevel`
**Patterns:** Builder (configuration), Chain of Responsibility (levels), Singleton
**Performance:** Async ring buffer. Structured logging (JSON).

### 8. Configuration Manager
**Requirements:** Hierarchical config, hot reload, validation, environments
**Classes:** `ConfigManager`, `ConfigSource` (File, Env, Consul), `Validator`, `Watcher`
**Patterns:** Composite (sources), Observer (reload), Decorator (caching)
**Extensions:** Feature flags, A/B testing, schema validation.

---

## Behavioral Frameworks

### STAR Framework
- **Situation** — Context, constraints, stakeholders
- **Task** — Your specific responsibility
- **Action** — What YOU did (not "we"), steps, decisions
- **Result** — Quantified impact, what learned

### CAR Framework
- **Challenge** — Problem, difficulty
- **Action** — Your response
- **Result** — Outcome, metrics

### Amazon Leadership Principles Mapping
| LP | Key Signals | Sample Questions |
|----|-------------|------------------|
| Customer Obsession | Starts with customer, works backward | "Tell me about a time you pushed back on a stakeholder for the customer" |
| Ownership | Long-term thinking, not "not my job" | "When did you take on something outside your scope?" |
| Invent & Simplify | Innovation, simplification | "Complex problem you solved simply?" |
| Are Right, A Lot | Judgment, seeks diverse views | "Decision you made with incomplete data?" |
| Learn & Be Curious | Growth mindset | "Recent skill you learned? How?" |
| Hire & Develop Best | Raising bar, coaching | "How do you hire? Develop?" |
| Insist on High Standards | Relentless quality | "Time you raised the bar?" |
| Think Big | Vision, risk-taking | "Biggest initiative you drove?" |
| Bias for Action | Speed, calculated risk | "Decision without all info?" |
| Frugality | Constraints breed creativity | "Achieved more with less?" |
| Earn Trust | Listening, candid, respectful | "Difficult feedback you gave?" |
| Dive Deep | Details, audit, skepticism | "Problem you found by digging?" |
| Have Backbone | Disagree & commit | "Disagreed with a decision? What did you do?" |
| Deliver Results | Key inputs, right quality, timely | "Missed deadline? What happened?" |
| Strive to be Earth's Best Employer | Empathy, growth, safety | "How do you support team wellbeing?" |
| Success & Scale Bring Responsibility | Humility, impact awareness | "Unintended consequence of your work?" |

### Googleyness Signals
- **Comfort with ambiguity** — Thrives in undefined problems
- **Collaborative** — "We" not "I", shares credit
- **User-focused** — Empathy for end user
- **Intellectual humility** — Admits mistakes, changes mind
- **Growth mindset** — Learns continuously

### Evaluation Rubric (Per Round)
| Dimension | Strong Hire | Hire | No Hire | Strong No Hire |
|-----------|-------------|------|---------|----------------|
| Problem Solving | Optimal + novel insights | Optimal + clean | Suboptimal but works | Fails / no approach |
| Technical Depth | Expert-level, trade-offs | Solid fundamentals | Gaps in basics | Fundamental misunderstandings |
| Communication | Clear, structured, adaptive | Clear, minor gaps | Unclear, rambling | Incoherent |
| Trade-off Analysis | Proactive, nuanced | When prompted | Superficial | None |

---

## Scoring Guidelines

### DSA Round
- **Strong Hire:** Optimal solution + clean code + all follow-ups + complexity proof
- **Hire:** Optimal solution + minor bugs + most follow-ups
- **No Hire:** Working but suboptimal / major bugs / missed follow-ups
- **Strong No Hire:** Cannot solve / no complexity awareness

### System Design Round
- **Strong Hire:** Complete design + deep dives + novel trade-offs + scalability insights
- **Hire:** Complete design + reasonable trade-offs + handles scale
- **No Hire:** Incomplete / major gaps / cannot articulate trade-offs
- **Strong No Hire:** Fundamentally flawed / no requirements clarification

### LLD Round
- **Strong Hire:** Clean domain model + SOLID + concurrency + extensibility + tests
- **Hire:** Good model + patterns + basic concurrency
- **No Hire:** Anemic model / tight coupling / no concurrency
- **Strong No Hire:** No structure / procedural / cannot explain design

### Behavioral Round
- **Strong Hire:** Multiple strong STARs + clear ownership + high impact + self-aware
- **Hire:** Good STARs + adequate impact + some self-reflection
- **No Hire:** Vague examples / low ownership / no metrics / defensive
- **Strong No Hire:** Fabricated / blames others / no learning / values mismatch

---

## Usage in GumpuMestri

```markdown
# In agent prompt or command:
Use @interview-questions for:
- Selecting DSA problem by pattern/difficulty
- Retrieving system design template with all sections
- Getting LLD problem with class diagram starter
- Behavioral question + LP mapping + rubric
- Standardized scorecard for current round
```