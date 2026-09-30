local catalog = {}

--[[栗子：
	catalog['分类名'] = 
	{
		ID1,ID2,...
	}
]]
catalog[1] = 
{
	448
} 

catalog[2] = 
{
	450
} 

catalog[3] = 
{
	398
} 
catalog[4] = 
{
	367
} 
catalog[5] = 
{
	219
} 
catalog[6] = 
{
	187,188,189
} 
catalog[7] = 
{
	105,106,107
} 
catalog[8] = 
{
	92,87,88,73,91,85
}
catalog[9] = 
{
	74,86,89,94,93,90
}
catalog[10] = 
{
	344
} 
catalog[11] = 
{
	345,348
} 

catalog[12] = 
{
	347,349
} 



local catalog_exchange = {}

catalog_exchange[1] = 
{
	449
}

catalog_exchange[2] = 
{
	452
}

catalog_exchange[3] = 
{
	190
}

catalog_exchange[4] = 
{
	175,451
}

catalog_exchange[5] = 
{
	172
}

catalog_exchange[6] = 
{
	1251,1252,1253,1254
}

catalog_exchange[7] = 
{
	1255,1256,1257,1258
}
return
{
	catalog = catalog,
	catalog_exchange=catalog_exchange,
}