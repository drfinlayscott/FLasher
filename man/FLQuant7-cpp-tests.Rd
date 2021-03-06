% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{test_FLQuant7_as_wrap}
\alias{test_FLQuant7_as_wrap}
\alias{test_FLQuant7_empty_wrap}
\alias{test_FLQuant7_basic_constructor}
\alias{test_FLQuant7_sexp_constructor}
\alias{test_FLQuant7_FLQuant_constructor}
\alias{test_FLQuant7_copy_constructor}
\alias{test_FLQuant7_copy_constructor2}
\alias{test_FLQuant7_assignment_operator}
\alias{test_FLQuant7_assignment_operator2}
\alias{test_FLQuant7_function_operator}
\alias{test_FLQuant7_get_ndim7}
\alias{test_FLQuant7_const_get_single_index_accessor}
\alias{test_FLQuant7_get_single_index_accessor}
\alias{test_FLQuant7_set_single_index_accessor}
\alias{test_FLQuant7_const_get_accessor}
\alias{test_FLQuant7_get_accessor}
\alias{test_FLQuant7_set_accessor}
\alias{test_FLQuant7_const_default_dim7_get_accessor}
\alias{test_FLQuant7_default_dim7_get_accessor}
\alias{test_FLQuant7_default_dim7_set_accessor}
\alias{test_FLQuant7_const_default_dim7_get_accessor_multi}
\alias{test_FLQuant7_default_dim7_get_accessor_multi}
\alias{test_FLQuant7_default_dim7_set_accessor_multi}
\alias{test_FLQuant7AD_as_wrap}
\alias{test_FLQuant7AD_empty_wrap}
\alias{test_FLQuant7AD_basic_constructor}
\alias{test_FLQuant7AD_sexp_constructor}
\alias{test_FLQuant7AD_FLQuant_constructor}
\alias{test_FLQuant7AD_copy_constructor}
\alias{test_FLQuant7AD_copy_constructor2}
\alias{test_FLQuant7AD_assignment_operator}
\alias{test_FLQuant7AD_assignment_operator2}
\alias{test_FLQuant7AD_function_operator}
\alias{test_FLQuant7AD_get_ndim7}
\alias{test_FLQuant7AD_const_get_single_index_accessor}
\alias{test_FLQuant7AD_get_single_index_accessor}
\alias{test_FLQuant7AD_set_single_index_accessor}
\alias{test_FLQuant7AD_const_get_accessor}
\alias{test_FLQuant7AD_get_accessor}
\alias{test_FLQuant7AD_set_accessor}
\alias{test_FLQuant7AD_const_default_dim7_get_accessor}
\alias{test_FLQuant7AD_default_dim7_get_accessor}
\alias{test_FLQuant7AD_default_dim7_set_accessor}
\alias{test_FLQuant7AD_const_default_dim7_get_accessor_multi}
\alias{test_FLQuant7AD_default_dim7_get_accessor_multi}
\alias{test_FLQuant7AD_default_dim7_set_accessor_multi}
\title{This class is barely used - maybe remove it?}
\usage{
test_FLQuant7_as_wrap(flq7)

test_FLQuant7_empty_wrap()

test_FLQuant7_basic_constructor()

test_FLQuant7_sexp_constructor(flq_sexp1)

test_FLQuant7_FLQuant_constructor(flq)

test_FLQuant7_copy_constructor(flq7)

test_FLQuant7_copy_constructor2(flq71, dim7, quant, year, unit, season, area,
  iter, value)

test_FLQuant7_assignment_operator(flq7)

test_FLQuant7_assignment_operator2(flq71, dim7, quant, year, unit, season, area,
  iter, value)

test_FLQuant7_function_operator(flq7, flq)

test_FLQuant7_get_ndim7(flq_sexp1)

test_FLQuant7_const_get_single_index_accessor(flq7, element)

test_FLQuant7_get_single_index_accessor(flq7, element)

test_FLQuant7_set_single_index_accessor(flq7, element, flq)

test_FLQuant7_const_get_accessor(flq7, dim7, quant, year, unit, season, area,
  iter)

test_FLQuant7_get_accessor(flq7, dim7, quant, year, unit, season, area, iter)

test_FLQuant7_set_accessor(flq7, dim7, quant, year, unit, season, area, iter,
  value)

test_FLQuant7_const_default_dim7_get_accessor(flq7)

test_FLQuant7_default_dim7_get_accessor(flq7)

test_FLQuant7_default_dim7_set_accessor(flq7, flq)

test_FLQuant7_const_default_dim7_get_accessor_multi(flq7, quant, year, unit,
  season, area, iter)

test_FLQuant7_default_dim7_get_accessor_multi(flq7, quant, year, unit, season,
  area, iter)

test_FLQuant7_default_dim7_set_accessor_multi(flq7, quant, year, unit, season,
  area, iter, value)

test_FLQuant7AD_as_wrap(flq7)

test_FLQuant7AD_empty_wrap()

test_FLQuant7AD_basic_constructor()

test_FLQuant7AD_sexp_constructor(flq_sexp1)

test_FLQuant7AD_FLQuant_constructor(flq)

test_FLQuant7AD_copy_constructor(flq7)

test_FLQuant7AD_copy_constructor2(flq71, dim7, quant, year, unit, season, area,
  iter, value)

test_FLQuant7AD_assignment_operator(flq7)

test_FLQuant7AD_assignment_operator2(flq71, dim7, quant, year, unit, season,
  area, iter, value)

test_FLQuant7AD_function_operator(flq7, flq)

test_FLQuant7AD_get_ndim7(flq_sexp1)

test_FLQuant7AD_const_get_single_index_accessor(flq7, element)

test_FLQuant7AD_get_single_index_accessor(flq7, element)

test_FLQuant7AD_set_single_index_accessor(flq7, element, flq)

test_FLQuant7AD_const_get_accessor(flq7, dim7, quant, year, unit, season, area,
  iter)

test_FLQuant7AD_get_accessor(flq7, dim7, quant, year, unit, season, area, iter)

test_FLQuant7AD_set_accessor(flq7, dim7, quant, year, unit, season, area, iter,
  value)

test_FLQuant7AD_const_default_dim7_get_accessor(flq7)

test_FLQuant7AD_default_dim7_get_accessor(flq7)

test_FLQuant7AD_default_dim7_set_accessor(flq7, flq)

test_FLQuant7AD_const_default_dim7_get_accessor_multi(flq7, quant, year, unit,
  season, area, iter)

test_FLQuant7AD_default_dim7_get_accessor_multi(flq7, quant, year, unit, season,
  area, iter)

test_FLQuant7AD_default_dim7_set_accessor_multi(flq7, quant, year, unit, season,
  area, iter, value)
}
\arguments{
\item{flq7}{something}

\item{flq_sexp1}{a parameter}

\item{flq}{something}

\item{flq71}{something}

\item{dim7}{something}

\item{quant}{something}

\item{year}{something}

\item{unit}{something}

\item{season}{something}

\item{area}{something}

\item{iter}{something}

\item{value}{something}

\item{element}{something}
}
\description{
This class is barely used - maybe remove it?
}
