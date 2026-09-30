

local pet_book_real = {}
local pet_book = setmetatable({}, {__index=pet_book_real, __newindex=function (t, k, v)
	if pet_book_real[k] then error("replicated pet_book id: " .. tostring(k)) end
	pet_book_real[k] = v
end})

pet_book[7998] =
{
    level = 45,
	pettalent = "1.001--1.135",
	baseHP  = "16--25",
	basePhyAtk = "20--30",
	basePhyDef = "30--35",
	baseMagDef = "35--48",
}

pet_book[8013] =
{
    level = 45,
	pettalent = "1.001--1.125",
	baseHP  = "16--25",
	basePhyAtk = "20--30",
	basePhyDef = "30--35",
	baseMagDef = "35--48",
}

pet_book[8014] =
{
    level = 45,
	pettalent = "1.005--1.130",
	baseHP  = "16--25",
	basePhyAtk = "20--30",
	basePhyDef = "30--35",
	baseMagDef = "35--48",
}

pet_book[8015] =
{
    level = 45,
	pettalent = "1.01--1.135",
	baseHP  = "16--25",
	basePhyAtk = "20--30",
	basePhyDef = "30--35",
	baseMagDef = "35--48",
}

pet_book[8016] =
{
    level = 45,
	pettalent = "1.02--1.145",
	baseHP  = "16--25",
	basePhyAtk = "20--30",
	basePhyDef = "30--35",
	baseMagDef = "35--48",
}

pet_book[8021] =
{
    level = 45,
	pettalent = "1.025--1.145",
	baseHP  = "16--25",
	basePhyAtk = "20--30",
	basePhyDef = "30--35",
	baseMagDef = "35--48",
}

pet_book[8574] =
{
    level = 45,
	pettalent = "1.000--1.250",
	baseHP  = "16--25",
	basePhyAtk = "20--30",
	basePhyDef = "30--35",
	baseMagDef = "35--48",
}
return pet_book_real
