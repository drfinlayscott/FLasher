% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{test_simple_FLCatch_sexp_constructor}
\alias{test_simple_FLCatch_sexp_constructor}
\alias{test_FLCatch_sexp_constructor}
\alias{test_FLCatchAD_sexp_constructor}
\alias{test_FLCatch_as_wrap}
\alias{test_FLCatchAD_as_wrap}
\alias{test_FLCatch_copy_constructor}
\alias{test_FLCatchAD_copy_constructor}
\alias{test_FLCatch_copy_constructor2}
\alias{test_FLCatchAD_copy_constructor2}
\alias{test_FLCatch_assignment_operator}
\alias{test_FLCatchAD_assignment_operator}
\alias{test_FLCatch_assignment_operator2}
\alias{test_FLCatchAD_assignment_operator2}
\alias{test_FLCatch_const_get_accessors}
\alias{test_FLCatch_const_get_accessors_subset}
\alias{test_FLCatchAD_const_get_accessors}
\alias{test_FLCatch_get_accessors}
\alias{test_FLCatchAD_get_accessors}
\alias{test_FLCatch_set_accessors}
\alias{test_FLCatchAD_set_accessors}
\alias{test_FLCatch_revenue_subset}
\alias{test_FLCatch_revenue}
\alias{test_FLCatch_landings}
\alias{test_FLCatchAD_landings}
\alias{test_FLCatch_discards}
\alias{test_FLCatchAD_discards}
\alias{test_FLCatch_catch_n}
\alias{test_FLCatchAD_catch_n}
\alias{test_FLCatch_catch_wt}
\alias{test_FLCatchAD_catch_wt}
\alias{test_FLCatch_catches}
\alias{test_FLCatchAD_catches}
\alias{test_FLCatch_discards_ratio}
\alias{test_FLCatchAD_discards_ratio}
\alias{test_FLCatch_landings_sel}
\alias{test_FLCatchAD_landings_sel}
\alias{test_FLCatch_discards_sel}
\alias{test_FLCatchAD_discards_sel}
\alias{test_FLCatchAD_catch_q_params}
\alias{test_FLCatchAD_catch_q_params_subset}
\alias{test_FLCatches_as_wrap}
\alias{test_FLCatches_sexp_constructor}
\alias{test_FLCatches_FLCatch_constructor}
\alias{test_FLCatches_copy_constructor}
\alias{test_FLCatches_copy_constructor2}
\alias{test_FLCatches_assignment_operator}
\alias{test_FLCatches_assignment_operator2}
\alias{test_FLCatches_function_operator}
\alias{test_FLCatches_get_ncatches}
\alias{test_FLCatches_const_get_single_index_accessor}
\alias{test_FLCatches_get_single_index_accessor}
\alias{test_FLCatches_const_get_value_accessor}
\alias{test_FLCatches_get_value_accessor}
\alias{test_FLCatches_set_single_index_accessor}
\alias{test_FLCatches_set_value_accessor}
\alias{test_FLCatchesAD_as_wrap}
\alias{test_FLCatchesAD_sexp_constructor}
\alias{test_FLCatchesAD_FLCatchAD_constructor}
\alias{test_FLCatchesAD_copy_constructor}
\alias{test_FLCatchesAD_copy_constructor2}
\alias{test_FLCatchesAD_assignment_operator}
\alias{test_FLCatchesAD_assignment_operator2}
\alias{test_FLCatchesAD_function_operator}
\alias{test_FLCatchesAD_get_ncatches}
\alias{test_FLCatchesAD_const_get_single_index_accessor}
\alias{test_FLCatchesAD_get_single_index_accessor}
\alias{test_FLCatchesAD_const_get_value_accessor}
\alias{test_FLCatchesAD_get_value_accessor}
\alias{test_FLCatchesAD_set_single_index_accessor}
\alias{test_FLCatchesAD_set_value_accessor}
\alias{test_FLCatchesAD_const_iterator}
\alias{test_FLCatchesAD_iterator}
\title{Shit tonnes of them!}
\usage{
test_simple_FLCatch_sexp_constructor(flc_sexp)

test_FLCatch_sexp_constructor(flc_sexp)

test_FLCatchAD_sexp_constructor(flc_sexp)

test_FLCatch_as_wrap(flc)

test_FLCatchAD_as_wrap(flc)

test_FLCatch_copy_constructor(flc1)

test_FLCatchAD_copy_constructor(flc1)

test_FLCatch_copy_constructor2(flc1, quant, year, unit, season, area, iter,
  value)

test_FLCatchAD_copy_constructor2(flc1, quant, year, unit, season, area, iter,
  value)

test_FLCatch_assignment_operator(flc1)

test_FLCatchAD_assignment_operator(flc1)

test_FLCatch_assignment_operator2(flc1, quant, year, unit, season, area, iter,
  value)

test_FLCatchAD_assignment_operator2(flc1, quant, year, unit, season, area, iter,
  value)

test_FLCatch_const_get_accessors(flc, quant, year, unit, season, area, iter)

test_FLCatch_const_get_accessors_subset(flc, indices_min, indices_max)

test_FLCatchAD_const_get_accessors(flc, quant, year, unit, season, area, iter)

test_FLCatch_get_accessors(flc, quant, year, unit, season, area, iter)

test_FLCatchAD_get_accessors(flc, quant, year, unit, season, area, iter)

test_FLCatch_set_accessors(flc, quant, year, unit, season, area, iter, values)

test_FLCatchAD_set_accessors(flc, quant, year, unit, season, area, iter, values)

test_FLCatch_revenue_subset(flc, indices_min, indices_max)

test_FLCatch_revenue(flc)

test_FLCatch_landings(flc)

test_FLCatchAD_landings(flc)

test_FLCatch_discards(flc)

test_FLCatchAD_discards(flc)

test_FLCatch_catch_n(flc)

test_FLCatchAD_catch_n(flc)

test_FLCatch_catch_wt(flc)

test_FLCatchAD_catch_wt(flc)

test_FLCatch_catches(flc)

test_FLCatchAD_catches(flc)

test_FLCatch_discards_ratio(flc)

test_FLCatchAD_discards_ratio(flc)

test_FLCatch_landings_sel(flc)

test_FLCatchAD_landings_sel(flc)

test_FLCatch_discards_sel(flc)

test_FLCatchAD_discards_sel(flc)

test_FLCatchAD_catch_q_params(flc, indices)

test_FLCatchAD_catch_q_params_subset(flc, indices_min, indices_max)

test_FLCatches_as_wrap(flcs)

test_FLCatches_sexp_constructor(flcs_sexp1)

test_FLCatches_FLCatch_constructor(flc)

test_FLCatches_copy_constructor(flcs)

test_FLCatches_copy_constructor2(flcs1, catches, quant, year, unit, season,
  area, iter, value)

test_FLCatches_assignment_operator(flcs)

test_FLCatches_assignment_operator2(flcs1, catches, quant, year, unit, season,
  area, iter, value)

test_FLCatches_function_operator(flcs, flc)

test_FLCatches_get_ncatches(flc_sexp1)

test_FLCatches_const_get_single_index_accessor(flcs, element)

test_FLCatches_get_single_index_accessor(flcs, element)

test_FLCatches_const_get_value_accessor(flcs, catches, quant, year, unit,
  season, area, iter)

test_FLCatches_get_value_accessor(flcs, catches, quant, year, unit, season,
  area, iter)

test_FLCatches_set_single_index_accessor(flcs, element, flc)

test_FLCatches_set_value_accessor(flcs, element, quant, year, unit, season,
  area, iter, value)

test_FLCatchesAD_as_wrap(flcs)

test_FLCatchesAD_sexp_constructor(flcs_sexp1)

test_FLCatchesAD_FLCatchAD_constructor(flc)

test_FLCatchesAD_copy_constructor(flcs)

test_FLCatchesAD_copy_constructor2(flcs1, catches, quant, year, unit, season,
  area, iter, value)

test_FLCatchesAD_assignment_operator(flcs)

test_FLCatchesAD_assignment_operator2(flcs1, catches, quant, year, unit, season,
  area, iter, value)

test_FLCatchesAD_function_operator(flcs, flc)

test_FLCatchesAD_get_ncatches(flc_sexp1)

test_FLCatchesAD_const_get_single_index_accessor(flcs, element)

test_FLCatchesAD_get_single_index_accessor(flcs, element)

test_FLCatchesAD_const_get_value_accessor(flcs, catches, quant, year, unit,
  season, area, iter)

test_FLCatchesAD_get_value_accessor(flcs, catches, quant, year, unit, season,
  area, iter)

test_FLCatchesAD_set_single_index_accessor(flcs, element, flc)

test_FLCatchesAD_set_value_accessor(flcs, element, quant, year, unit, season,
  area, iter, value)

test_FLCatchesAD_const_iterator(catches)

test_FLCatchesAD_iterator(catches, quant, year, unit, season, area, iter, value)
}
\arguments{
\item{flc_sexp}{something}

\item{flc}{something}

\item{flc1}{something}

\item{quant}{something}

\item{year}{something}

\item{unit}{something}

\item{season}{something}

\item{area}{something}

\item{iter}{something}

\item{value}{something}

\item{indices_min}{something}

\item{indices_max}{something}

\item{values}{something}

\item{indices}{something}

\item{flcs}{something}

\item{flcs_sexp1}{something}

\item{flcs1}{something}

\item{catches}{something}

\item{flc_sexp1}{something}

\item{element}{something}
}
\description{
Shit tonnes of them!
}
