
<!-- README.md is generated from README.Rmd. Please edit that file -->

# IatiTidy: An R Interface to International Aid Transparency Initiative Data Store <img src="man/figures/iatitidy.png" width="200" align="right" />

This package wraps [IATI Datastore Query
Builder](Wrapper%20to%20https://iatidatastore.iatistandard.org/querybuilder).
For more info on the query builder, consult the dedicated [user
guide](https://iatistandard.org/documents/10453/IATI_Datastore_Query_Builder_User_Guide.pdf).

IATI Datastore provides access to development and humanitarian data that
complies with the most up-to-date rules of the [IATI
Standard](https://iatistandard.org).

## What is IATI?

Data published to IATI is published in `activity` units, the core
building blocks of the data. **Activities** are usually projects, but
they can be any unit of development cooperation as defined by the
publisher, such as a program or a contract. Typically,an entire donor
country program is made up of a number of activities. Each activity is
given a unique identifier and contains details of all incoming and
outgoing transactions. Each transaction also has a unique identifier and
contains data covering,among other things,the date, the value, a
description, and details about the provider and receivers of the funds.
It is classified into one of three categories.

**Disbursement**: Outgoing funds placed at the disposal of a recipient
government or organization, or funds transferred between two separately
reported activities. Under IATI traceability standards the recipient of
a disbursement should also be required to report their activities to
IATI.

**Expenditure**: Outgoing funds spent directly on goods and services for
the activity. The recipients of expenditures fall outside of IATI
traceability standards and are considered to be the end of the
implementation chain. Therefore, an expenditure provided to a
non-country-based organization is considered to be funds \`not reaching
the country.

**Incoming fund**: Funds received for an activity, which can be from an
external or internal source.

## Package Objectives

The objective is to extract data to perform potential analysis as below:

  - What are the **most funded sectors** per country?

  - What’s the **share of ODA** (Official Development Assistance) among
    the total flow of foreign aid per country?

  - What is the share of ODA allocated to **national actors**?

  - What’s the **share of Humanitarian assistance** within the total
    ODA?

  - Who are the **main donors by country** in terms of number of
    projects and/or total budget?

  - What’s the breakdown of **Earmarking Type** (Unearmarked, Tightly
    earmarked, etc.) from Donor Funds by Year?

  - What’s the relationship between when a project was **planned to
    start** (proxy for when a project was conceived) and the amount of
    USD committed. We would know if there is a trend in terms of the
    project size?

  - What’s the relationship between the amount of time by which start
    was **delayed** and the amount of time by which the end of the
    project was delayed?

## Functionnality

The package goal is to conveniently: \* pull data from the API \* tidy
the results in a simple data frame and \* re-encode the data with
digestible label from the [IATI code
set](https://iatistandard.org/en/iati-standard/203/codelists/) \*
generate predefined charts

## Installation

You can install `IatiTidy` from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("unhcr-americas/IatiTidy")
```

#### Building package documentation

`devtools::document()`

`devtools::check(document = FALSE)`

`pkgdown::build_site()`
