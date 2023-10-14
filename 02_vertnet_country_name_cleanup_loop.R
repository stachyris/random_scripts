```R
# Define a list of country-specific functions
replace_functions <- list(
  USA = function(x) {
    if (grepl("United  States| United  States  Of  America|United  States  Minor  Outlying  Islands|Usa|The  United  States  Midway  Atoll ( Usa)", x, ignore.case = FALSE)) {
      return("The United States of America")
    } else {
      return(x)
    }
  },
  ADRM = function(x) {
    if (grepl("Admiralty|Admiralty  Group|Admiralty  Islands", x, ignore.case = FALSE)) {
      return("Admiralty  Islands")
    } else {
      return(x)
    }
  },
  ANTD = function(x) {
    if (grepl("Antipodes  Island|Antipodes  Islands|Antipodes  Islands. [ S.e.  Of  New  Zealand]|Antipodes  Islands;  New  Zealand", x, ignore.case = FALSE)) {
      return("Antipodes  Islands")
    } else {
      return(x)
    }
  },
  PHIL = function(x) {
    if (grepl("Philippine| Philippine  Ids| Philippine  Islands| Philippine  Isls| Philippine's|Philippines| Philippines  Isl| Philippines  Islands|Phill| Phillipine  Islands| Phillipines| Philip", x, ignore.case = FALSE)) {
      return("Philippines")
    } else {
      return(x)
    }
  },
  ALIS = function(x) {
    if (grepl("Aldabra  Islands|Aldabrar  Islands", x, ignore.case = TRUE)) {
      return("Aldabra  Islands")
    } else {
      return(x)
    }
  },
  ANBR = function(x) {
    if (grepl("Antigua| Antigua  And  Barbuda", x, ignore.case = TRUE)) {
      return("Antigua  And  Barbuda")
    } else {
      return(x)
    }
  },
  AUIS = function(x) {
    if (grepl(" Auckland  Island|Auckland  Islands", x, ignore.case = TRUE)) {
      return("Auckland  Islands")
    } else {
      return(x)
    }
  },
  BAHA = function(x) {
    if (grepl(" Bahama  Islands|Bahamas| Bahamas,  The", x, ignore.case = TRUE)) {
      return("Bahamas")
    } else {
      return(x)
    }
  },
  BAIS = function(x) {
    if (grepl(" Banda  Islands|Banda  Islands's", x, ignore.case = TRUE)) {
      return("Banda  Islands")
    } else {
      return(x)
    }
  },
  CEFLIS = function(x) {
    if (grepl(" Between  Celebes  And  Flores  Islands| Between  Celebes &  Flores  Islands| Between  Flores  And  Celebes", x, ignore.case = TRUE)) {
      return("Celebes  And  Flores  Islands")
    } else {
      return(x)
    }
  },
  BHUT = function(x) {
    if (grepl("Bhutan| Bhutan,  India", x, ignore.case = TRUE)) {
      return("Bhutan")
    } else {
      return(x)
    }
  }
)

# Loop over the list of functions and apply them
for (i in seq_along(replace_functions)) {
  country_clean$country <- sapply(country_clean$country, replace_functions[[i]])
}
```
