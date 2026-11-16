class Solution(object):
    def searchRange(self, nums, target):
        s,e=0,len(nums)-1
        lb=-1
        up=-1
        while s<=e:
            mid=(s+e)//2
            if nums[mid] >=target:
                if target==nums[mid]:
                    lb=mid
                e=mid-1
            else:
                s=mid+1

        s,e=0,len(nums)-1
        while s <=e:
            mid=(s+e) //2
            if nums[mid] <=target:
                if target==nums[mid]:
                    up=mid
                s=mid+1
            else:
                e=mid-1
        return [lb,up]
