import Test.HUnit
import MergeSort


testlist1 = TestCase $ assertEqual "" 
    [1,3,5,7,9,22,123] (merge_sort [22,1,7,3,5,9,123])

testlist2 = TestCase $ assertEqual "" 
    ([]::[Int]) (merge_sort []::[Int])

testlist3 = TestCase $ assertEqual ""
    [256] (merge_sort [256])

testlist4 = TestCase $ assertEqual ""
    ['a'] (merge_sort ['a'])

testlist5 = TestCase $ assertEqual ""
    "iorst" (merge_sort "risto")

tests = 
    TestList [TestLabel "testlist1" testlist1, 
              TestLabel "testlist2" testlist2,
              TestLabel "testlist3" testlist3,
              TestLabel "testlist4" testlist4,
              TestLabel "testlist5" testlist5]

main = runTestTT tests
