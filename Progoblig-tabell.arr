use context essentials2021
include tables
include gdrive-sheets
include data-source # to get the sanitizers
include shared-gdrive("dcic-2021", "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
end

#Sanitize tabell
event-data =
  load-table: komponent, energi
    source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize komponent using string-sanitizer
    sanitize energi using string-sanitizer

  end

# Endre String til Number
fun set-angle(s :: String) -> Number:
  cases(Option) string-to-number(s):
    | some(a) => a
    | none => 0
  end
where:
  set-angle("") is 0
  set-angle("30") is 30
  set-angle("37") is 37
  set-angle("5") is 5
  set-angle("4") is 4
  set-angle("15") is 15
  set-angle("48") is 48
  set-angle("12") is 12
  set-angle("4") is 4
end

numbers = transform-column(event-data, "energi", set-angle)

sum(numbers, "energi")

sum-uten-bil = sum(numbers, "energi")


# Formel for å regne ut forbruk
fun forbruk(distanse-dag, distanse-enhet, energi-enhet):
  num-round((distanse-dag / distanse-enhet) * energi-enhet)
end
  
forbruk-bil = forbruk(50, 12, 10)

totalforbruk = forbruk-bil + sum-uten-bil
totalforbruk

bil-energi = forbruk-bil

# Sett inn bilforbruk i tabell
energi-kolonne = numbers.get-column("energi").set(0,bil-energi)

ny-tabell = [table-from-columns:
  {"komponent"; numbers.get-column("komponent")},
  {"energi"; energi-kolonne}
]
ny-tabell

# Lag bar-chart
bar-chart(ny-tabell, "komponent", "energi")
