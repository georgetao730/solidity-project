// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

// InsertionSort contract
// 排序算法解决的问题：将无序的一组数字，按照从小到大的顺序排列
// 插入排序算法思路：将数组分为两部分，一部分是有序的，一部分是无序的，每次从无序的部分取出一个元素，插入到有序的部分中
// 时间复杂度：O(n^2)
// 空间复杂度：O(1)
// 稳定性：稳定
// 适用场景：数据量较小，数据基本有序的情况下
contract InsertionSort {

    function sort(uint[] memory data) public pure returns (uint[] memory) {
        uint len = data.length;
        if (len == 0) {
            return data;
        }

        for (uint i = 1; i < len; i++) {
            uint key = data[i];
            int256 j = int256(i) - 1; // 处理负数
            // 将data[i]插入到已经排好序的部分中
            while(j >= 0 && data[uint(j)] > key) {
                data[uint(j+1)] = data[uint(j)];
                j--;
            }
            data[uint(j+1)] = key;
        }
        return data;
    }

    function test() public pure returns (uint[] memory) {
        uint[] memory data = new uint[](4);
        data[0] = 2;
        data[1] = 5;
        data[2] = 3;
        data[3] = 1;
        return sort(data);
    }
}