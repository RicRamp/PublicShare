
# $all_ad_comps
$store_list = '001', '007'
foreach ($store_code in $store_list) {
    $comps_list = $all_ad_comps.Where( { $_.Name -match "...._{0:d4}_(PC|LT)[0-9][0-9]" -f [int]$store_code })
    foreach ($store_comp in $comps_list) {
        $icon_url = "https://www.dayforcehcm.com/clock/index.html?ns=mhj&cn=MHJ_{0:d3}&sc=RGF5Zm9yY2Ux" -f $store_code
        write-output "this is how i make this link >$icon_url< appear on this computer $($store_comp.Name)"
    }
}




# Modified code that can be deployed to NZL 
# Repo for file reference is saved in C:\temp

$computers = Get-ADComputer -Filter {name -like 'NZMH*'}

$list = '006'
foreach ($store_code in $list) {
    $comps_list = $computers.Where( { $_.Name -match "...._{0:d4}_(PC|LT)[0-9][0-9]" -f [int]$store_code })
    foreach ($store_comp in $comps_list) {
        $icon_url = "https://www.dayforcehcm.com/clock/index.html?ns=mhj&cn=MHJ_{0:d3}&sc=RGF5Zm9yY2Ux" -f $store_code
        
                          
             
        write-output "this is how i make this link >$icon_url< appear on this computer $($store_comp.Name)"
    

    "end of store"
    }
}

$list = @('003','005','006','007','008','009','010','011','012','014','015','016','017','018','019','020','021','022','023','024','025','027','029','030','031','032','034','035','036','037','038','039','040','042','043','044','045','046','047','048','049','050','051','053','054','056','057','058','059','061','063','066','067','068')





$computers = Get-ADComputer -Filter {name -like 'NZMH*'}

$list = @('003','005','006','007','008','009','010','011','012','014','015','016','017','018','019','020','021','022','023','024','025','027','029','030','031','032','034','035','036','037','038','039','040','042','043','044','045','046','047','048','049','050','051','053','054','056','057','058','059','061','063','066','067','068')
foreach ($store_code in $list) {
    $comps_list = $computers.Where( { $_.Name -match "...._{0:d4}_(PC|LT)[0-9][0-9]" -f [int]$store_code })
    foreach ($store_comp in $comps_list) {
        $icon_url = "https://www.dayforcehcm.com/clock/index.html?ns=mhj&cn=MHJ_{0:d3}&sc=RGF5Zm9yY2Ux" -f $store_code
                                  
           
        # write-output "this is how i make this link >$icon_url< appear on this computer $($store_comp.Name)"
    "end of store"
    }
}






$computers = Get-ADComputer -Filter {name -like 'NZMH*'}

$list = @('003','005','006','007','008','009','010','011','012','014','015','016','017','018','019','020','021','022','023','024','025','027','029','030','031','032','034','035','036','037','038','039','040','042','043','044','045','046','047','048','049','050','051','053','054','056','057','058','059','061','063','066','067','068')
foreach ($store_code in $list) {
    $comps_list = $computers.Where( { $_.Name -match "...._{0:d4}_(PC|LT)[0-9][0-9]" -f [int]$store_code })
    foreach ($store_comp in $comps_list) {
        $icon_url = "https://www.dayforcehcm.com/clock/index.html?ns=mhj&cn=MHJ_{0:d3}&sc=RGF5Zm9yY2Ux" -f $store_code
                                  
           
        # write-output "this is how i make this link >$icon_url< appear on this computer $($store_comp.Name)"
    "end of store"
    }
}






_________________________


# $all_ad_comps
$store_list = '006', '007'
foreach ($store_code in $store_list) {
    $comps_list = $computers.Where( { $_.Name -match "...._{0:d4}_(PC|LT)[0-9][0-9]" -f [int]$store_code })
    foreach ($store_comp in $comps_list) {
        $icon_url = "https://www.dayforcehcm.com/clock/index.html?ns=mhj&cn=MHJ_{0:d3}&sc=RGF5Zm9yY2Ux" -f $store_code
        write-output "this is how i make this link >$icon_url< appear on this computer $($store_comp.Name)"



        $ShortcutIconLocation = '%SystemRoot%\System32\SHELL32.dll, 265'
        $urlShortcut = $wshShell.CreateShortcut( (Join-Path $wshShell.SpecialFolders.Item("AllUsersDesktop") "Test Clock.lnk") )
        $wshShell = New-Object -ComObject "WScript.Shell"
        $urlShortcut.TargetPath = $icon_url
        $urlShortcut.IconLocation = $ShortcutIconLocation
        $urlShortcut.Save()
    }
}






















