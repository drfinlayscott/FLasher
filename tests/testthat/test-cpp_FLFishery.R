# Maintainer: Finlay Scott, JRC
# Distributed under the terms of the European Union Public Licence (EUPL) V.1.1.

context("Implementation of FLFishery - double and AD versions")
source("expect_funs.R")

test_that("FLFishery constructors - double",{
    flf_in <- random_FLFishery_generator() 
    test_FLFishery_empty_constructor()
    # SEXP constructor - used in as
    expect_identical(test_simple_FLFishery_sexp_constructor(flf_in), as.integer(0))
    # SEXP constructor with wrap
    flf_out <- test_FLFishery_sexp_constructor(flf_in)
    expect_FLFishery_equal(flf_in, flf_out)
    # as - wrap
    flf_out <- test_FLFishery_as_wrap(flf_in)
    expect_FLFishery_equal(flf_in, flf_out)
    # Copy constructor
    flf_out <- test_FLFishery_copy_constructor(flf_in)
    expect_FLFishery_equal(flf_in, flf_out)
    # Copy constructor2 - checking for deep copy
    flf_in <- random_FLFishery_generator() 
    element <- round(runif(1,min=1, max = length(flf_in)))
    indices <- round(runif(6,min=1, max = dim(landings.n(flf_in[[element]]))))
    value <- rnorm(1)
    flfs <- test_FLFishery_copy_constructor2(flf_in, element, indices[1], indices[2], indices[3], indices[4], indices[5], indices[6], value)
    expect_FLFishery_equal(flf_in, flfs[["flf1"]])
    expect_identical(c(landings.n(flfs[["flf2"]][[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]), value)
    # Assignment operator
    flf_out <- test_FLFishery_assignment_operator(flf_in)
    expect_FLFishery_equal(flf_in, flf_out)
    # Assignment operator2
    flfs <- test_FLFishery_assignment_operator2(flf_in, element, indices[1], indices[2], indices[3], indices[4], indices[5], indices[6], value)
    expect_FLFishery_equal(flf_in, flfs[["flf1"]])
    expect_identical(c(landings.n(flfs[["flf2"]][[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]), value)
})

test_that("FLCatches get and set data accessors - double", {
    flf_in <- random_FLFishery_generator() 
    element <- round(runif(1,min=1, max = length(flf_in)))
    indices <- round(runif(6,min=1, max = dim(landings.n(flf_in[[element]]))))
    # get const catches accessor
    values_out <-  test_FLFishery_const_catches_get_accessors(flf_in, element, indices[1], indices[2], indices[3], indices[4], indices[5], indices[6])
    values_in <- c(c(landings.n(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.n(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(landings.wt(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.wt(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(catch.sel(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(price(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(catch(flf_in[[element]])[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(catch.n(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(landings(flf_in[[element]])[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards(flf_in[[element]])[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(landings.sel(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.sel(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.ratio(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]))
    expect_equal(values_out, values_in) # Not identical as some use the quant_sum method - numerical differences
    # get catches accessor
    values_out <-  test_FLFishery_catches_get_accessors(flf_in, element, indices[1], indices[2], indices[3], indices[4], indices[5], indices[6])
    values_in <- c(c(landings.n(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.n(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(landings.wt(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.wt(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(catch.sel(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(price(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(catch(flf_in[[element]])[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(catch.n(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(landings(flf_in[[element]])[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards(flf_in[[element]])[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(landings.sel(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.sel(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.ratio(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]))
    expect_equal(values_out, values_in) # Not identical as some use the quant_sum method - numerical differences
    # get const hperiod, effort, vcost, fcost accessor - no units
    indices[3] <- 1
    values_out <- test_FLFishery_const_economics_get_accessors(flf_in, indices[2], indices[3], indices[4], indices[5], indices[6])
    values_in <- c(c(flf_in@effort[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(flf_in@vcost[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(flf_in@fcost[1, indices[2], indices[3], indices[4], indices[5], indices[6]]))
    expect_identical(values_out, values_in)
    value_out <- test_FLFishery_const_get_hperiod(flf_in, 1, indices[2], indices[3], indices[4], indices[5], indices[6])
    expect_identical(value_out, c(flf_in@hperiod[1, indices[2], indices[3], indices[4], indices[5], indices[6]]))
    # get effort, vcost, fcost accessor
    values_out <- test_FLFishery_economics_get_accessors(flf_in, indices[2], indices[3], indices[4], indices[5], indices[6])
    values_in <- c(c(flf_in@effort[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(flf_in@vcost[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(flf_in@fcost[1, indices[2], indices[3], indices[4], indices[5], indices[6]]))
    expect_identical(values_out, values_in)
    value_out <- test_FLFishery_get_hperiod(flf_in, 1, indices[2], indices[3], indices[4], indices[5], indices[6])
    expect_identical(value_out, c(flf_in@hperiod[1, indices[2], indices[3], indices[4], indices[5], indices[6]]))
    # set catches and economics slots
    value <- rnorm(1)
    flf_out <- test_FLFishery_set_accessors(flf_in, element, indices[1], indices[2], indices[3], indices[4], indices[5], indices[6], value)
    values_out <- c(c(landings.n(flf_out[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.n(flf_out[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(landings.wt(flf_out[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.wt(flf_out[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(catch.sel(flf_out[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(price(flf_out[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(flf_out@effort[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(flf_out@vcost[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(flf_out@fcost[1, indices[2], indices[3], indices[4], indices[5], indices[6]]))
    expect_identical(rep(value, length(values_out)), values_out)
    value <- rnorm(1)
    out <- test_FLFishery_set_hperiod(flf_in, 1, indices[2], indices[3], indices[4], indices[5], indices[6], value)
    expect_identical(c(out[1, indices[2], indices[3], indices[4], indices[5], indices[6]]), value)
    element <- get_FLQuant_element(flf_in@hperiod, c(1, indices[2], indices[3], indices[4], indices[5], indices[6]))
    # Check others are untouched
    expect_identical(c(out)[-element], c(flf_in@hperiod)[-element])
})

#----------------------------------

test_that("FLFishery constructors - double",{
    flf_in <- random_FLFishery_generator() 
    test_FLFishery_empty_constructor()
    # SEXP constructor - used in as
    expect_identical(test_simple_FLFisheryAD_sexp_constructor(flf_in), as.integer(0))
    # SEXP constructor with wrap
    flf_out <- test_FLFisheryAD_sexp_constructor(flf_in)
    expect_FLFishery_equal(flf_in, flf_out)
    # as - wrap
    flf_out <- test_FLFisheryAD_as_wrap(flf_in)
    expect_FLFishery_equal(flf_in, flf_out)
    # Copy constructor
    flf_out <- test_FLFisheryAD_copy_constructor(flf_in)
    expect_FLFishery_equal(flf_in, flf_out)
    # Copy constructor2 - checking for deep copy
    flf_in <- random_FLFishery_generator() 
    element <- round(runif(1,min=1, max = length(flf_in)))
    indices <- round(runif(6,min=1, max = dim(landings.n(flf_in[[element]]))))
    value <- rnorm(1)
    flfs <- test_FLFisheryAD_copy_constructor2(flf_in, element, indices[1], indices[2], indices[3], indices[4], indices[5], indices[6], value)
    expect_FLFishery_equal(flf_in, flfs[["flf1"]])
    expect_identical(c(landings.n(flfs[["flf2"]][[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]), value)
    # Assignment operator
    flf_out <- test_FLFisheryAD_assignment_operator(flf_in)
    expect_FLFishery_equal(flf_in, flf_out)
    # Assignment operator2
    flfs <- test_FLFisheryAD_assignment_operator2(flf_in, element, indices[1], indices[2], indices[3], indices[4], indices[5], indices[6], value)
    expect_FLFishery_equal(flf_in, flfs[["flf1"]])
    expect_identical(c(landings.n(flfs[["flf2"]][[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]), value)
})

test_that("FLCatches get and set data accessors - double", {
    flf_in <- random_FLFishery_generator() 
    element <- round(runif(1,min=1, max = length(flf_in)))
    indices <- round(runif(6,min=1, max = dim(landings.n(flf_in[[element]]))))
    # get const catches accessor
    values_out <-  test_FLFisheryAD_const_catches_get_accessors(flf_in, element, indices[1], indices[2], indices[3], indices[4], indices[5], indices[6])
    values_in <- c(c(landings.n(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.n(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(landings.wt(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.wt(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(catch.sel(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(price(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(catch(flf_in[[element]])[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(catch.n(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(landings(flf_in[[element]])[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards(flf_in[[element]])[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(landings.sel(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.sel(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.ratio(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]))
    expect_equal(values_out, values_in) # Not identical as some use the quant_sum method - numerical differences
    # get catches accessor
    values_out <-  test_FLFisheryAD_catches_get_accessors(flf_in, element, indices[1], indices[2], indices[3], indices[4], indices[5], indices[6])
    values_in <- c(c(landings.n(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.n(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(landings.wt(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.wt(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(catch.sel(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(price(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(catch(flf_in[[element]])[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(catch.n(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(landings(flf_in[[element]])[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards(flf_in[[element]])[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(landings.sel(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.sel(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.ratio(flf_in[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]))
    expect_equal(values_out, values_in) # Not identical as some use the quant_sum method - numerical differences
    # Fishery level accessors
    indices <- round(runif(6,min=1, max = dim(flf_in@effort)))
    # get const effort, vcost, fcost accessor
    values_out <- test_FLFisheryAD_const_economics_get_accessors(flf_in, indices[2], indices[3], indices[4], indices[5], indices[6])
    values_in <- c(c(flf_in@effort[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(flf_in@vcost[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(flf_in@fcost[1, indices[2], indices[3], indices[4], indices[5], indices[6]]))
    expect_identical(values_out, values_in)
    # get effort, vcost, fcost accessor
    values_out <- test_FLFisheryAD_economics_get_accessors(flf_in, indices[2], indices[3], indices[4], indices[5], indices[6])
    values_in <- c(c(flf_in@effort[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(flf_in@vcost[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(flf_in@fcost[1, indices[2], indices[3], indices[4], indices[5], indices[6]]))
    expect_identical(values_out, values_in)
    # set catches and economics slots
    value <- rnorm(1)
    flf_out <- test_FLFisheryAD_set_accessors(flf_in, element, indices[1], indices[2], indices[3], indices[4], indices[5], indices[6], value)
    values_out <- c(c(landings.n(flf_out[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.n(flf_out[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(landings.wt(flf_out[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(discards.wt(flf_out[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(catch.sel(flf_out[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(price(flf_out[[element]])[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(flf_out@effort[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(flf_out@vcost[1, indices[2], indices[3], indices[4], indices[5], indices[6]]),
                c(flf_out@fcost[1, indices[2], indices[3], indices[4], indices[5], indices[6]]))
    expect_identical(rep(value, length(values_out)), values_out)
})

test_that("FLFisheryAD iterators",{
    fishery <- random_FLFishery_generator(min_catches = 2, max_catches = 5)
    landingsnin <- lapply(fishery, function(x) return(landings.n(x)))
    # Const - just pulls out n
    landingsnout <- test_FLFisheryAD_const_iterator(fishery)
    expect_identical(landingsnout, landingsnin@.Data)
    # Not const - sets a value
    indices <- round(runif(6, min=1, max=dim(landings.n(fishery[[1]]))))
    value <- rnorm(1)
    fishery_out <- test_FLFisheryAD_iterator(fishery, indices[1], indices[2], indices[3], indices[4], indices[5], indices[6], value)
    value_out <- unname(unlist(lapply(fishery_out, function(x) return(landings.n(x)[indices[1], indices[2], indices[3], indices[4], indices[5], indices[6]]))))
    expect_identical(rep(value,length(fishery)), value_out)
    # All others are OK
    element <- get_FLQuant_element(landings.n(fishery[[1]]), indices)
    for (i in 1:length(fishery)){
        expect_identical(c(landings.n(fishery_out[[i]]))[-element], c(landings.n(fishery[[i]]))[-element])
    }
})

test_that("FLFishery indicators",{
    # Fishery with 1 catch
    fishery <- random_FLFishery_generator(min_catches = 1, max_catches = 1)
    rev_out <- test_FLFishery_revenue(fishery)
    rev_in <- (quantSums(fishery[[1]]@price * fishery[[1]]@landings.n * fishery[[1]]@landings.wt))
    expect_FLQuant_equal(rev_in, rev_out)
    # Fishery with multiple catches
    fishery <- random_FLFishery_generator(min_catches = 2, max_catches = 5)
    rev_out <- test_FLFishery_revenue(fishery)
    rev_in <- lapply(fishery, function(x) {
        return(quantSums(price(x) * landings.n(x) * landings.wt(x)))
    })
    rev_in <- Reduce("+",rev_in)
    expect_FLQuant_equal(rev_in, rev_out)
    # Revenue subset
    fishery <- random_FLFishery_generator(min_catches = 2, max_catches = 3)
    dimc <- dim(landings.wt(fishery[[1]]))
    indices_max <- round(runif(5, min=1, max=dimc[2:6]))
    indices_min <- round(runif(5, min=1, max=indices_max))
    rev_out <- test_FLFishery_revenue_subset(fishery, indices_min, indices_max)
    rev_in <- lapply(fishery, function(x) {
        return(quantSums((price(x) * landings.n(x) * landings.wt(x))[,indices_min[1]:indices_max[1],indices_min[2]:indices_max[2],indices_min[3]:indices_max[3], indices_min[4]: indices_max[4], indices_min[5]:indices_max[5]]))
    })
    rev_in <- Reduce("+",rev_in)
})

