//destroy if in destroy list
if ds_list_find_index(global.destroyList,id) != -1
instance_destroy();