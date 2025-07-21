//destroy if in destroy list
if ds_list_find_index(global.destroyList,id) != -1
instance_destroy();

//random rotation
image_angle = random_range(0,360);