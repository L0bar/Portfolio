/*

Cleaning Data in SQL Queries

*/


Select *
From project.dbo.housing

--------------------------------------------------------------------------------------------------------------------------

-- Standardize Date Format


Select SaleDateConverted, CONVERT(Date, SaleDate)
From project.dbo.housing


Update housing
SET SaleDate = CONVERT(Date,SaleDate)

-- If it doesn't Update properly

ALTER TABLE housing
Add SaleDateConverted Date;

Update housing
SET SaleDateConverted = CONVERT(Date,SaleDate)


 --------------------------------------------------------------------------------------------------------------------------

-- Populate Property Address data

Select *
From project.dbo.housing
--Where PropertyAddress is null
order by ParcelID



Select a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, ISNULL(a.PropertyAddress,b.PropertyAddress)
From project.dbo.housing a
JOIN project.dbo.housing b
	on a.ParcelID = b.ParcelID
	AND a.[UniqueID ] <> b.[UniqueID ]
Where a.PropertyAddress is null


Update a
SET PropertyAddress = ISNULL(a.PropertyAddress,b.PropertyAddress)
From project.dbo.housing a
JOIN project.dbo.housing b
	on a.ParcelID = b.ParcelID
	AND a.[UniqueID ] <> b.[UniqueID ]
Where a.PropertyAddress is null




--------------------------------------------------------------------------------------------------------------------------

-- Breaking out Address into Individual Columns (Address, City, State)


Select PropertyAddress
From project.dbo.housing
--Where PropertyAddress is null
--order by ParcelID

SELECT
SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1 ) as Address
, SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) + 1 , LEN(PropertyAddress)) as Address

From project.dbo.housing


ALTER TABLE housing
Add PropertySplitAddress Nvarchar(255);

Update housing
SET PropertySplitAddress = SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1 )


ALTER TABLE housing
Add PropertySplitCity Nvarchar(255);

Update housing
SET PropertySplitCity = SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) + 1 , LEN(PropertyAddress))




Select *
From project.dbo.housing





Select OwnerAddress
From project.dbo.housing


Select
PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3)
,PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2)
,PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1)
From project.dbo.housing



ALTER TABLE housing
Add OwnerSplitAddress Nvarchar(255);

Update housing
SET OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3)


ALTER TABLE housing
Add OwnerSplitCity Nvarchar(255);

Update housing
SET OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2)



ALTER TABLE housing
Add OwnerSplitState Nvarchar(255);

Update housing
SET OwnerSplitState = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1)



Select *
From project.dbo.housing




--------------------------------------------------------------------------------------------------------------------------


-- Change Y and N to Yes and No in "Sold as Vacant" field


Select Distinct(SoldAsVacant), Count(SoldAsVacant)
From project.dbo.housing
Group by SoldAsVacant
order by 2




Select SoldAsVacant
, CASE When SoldAsVacant = 'Y' THEN 'Yes'
	   When SoldAsVacant = 'N' THEN 'No'
	   ELSE SoldAsVacant
	   END
From project.dbo.housing


Update housing
SET SoldAsVacant = CASE When SoldAsVacant = 'Y' THEN 'Yes'
	   When SoldAsVacant = 'N' THEN 'No'
	   ELSE SoldAsVacant
	   END






-----------------------------------------------------------------------------------------------------------------------------------------------------------

-- Remove Duplicates

WITH RowNumCTE AS(
Select *,
	ROW_NUMBER() OVER (
	PARTITION BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 ORDER BY
					UniqueID
					) row_num

From project.dbo.housing
--order by ParcelID
)
Select *
From RowNumCTE
Where row_num > 1
Order by PropertyAddress



Select *
From project.dbo.housing















-----------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------















