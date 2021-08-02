---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hubin.
--- DateTime: 19-1-25 下午3:45
---

local PurchaseItem={}
PurchaseItem.Name="purchase item"
PurchaseItem.NumArgs=2

function PurchaseItem:Call( hUnit, itemName )
    for i = 0, 3 do
        if hUnit:ActionImmediate_PurchaseItem(itemName[1]) ~= PURCHASE_ITEM_SUCCESS then
            print("[ERROR] - Buy purchageItem error")
        else
            break
        end
    end
end

return PurchaseItem
