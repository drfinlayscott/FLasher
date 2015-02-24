/* 
 * Copyright 2013 FLR Team. Distributed under the GPL 2 or later
 * Maintainer: Finlay Scott, JRC
 */

#include <time.h>
#include "../../inst/include/FLQuant_base.h"

// [[Rcpp::export]]
std::string FLPar_units(SEXP flp) {
	Rcpp::S4 flp_s4 = Rcpp::as<Rcpp::S4>(flp);
    std::string units = flp_s4.slot("units");
    return units;
}

// Constructors and copiers

// [[Rcpp::export]]
FLQuant test_FLQuant_as_wrap(FLQuant flq){
	return flq;
}

// [[Rcpp::export]]
void test_FLQuant_basic_constructor(){
    FLQuant flq;
    return;
}

// [[Rcpp::export]]
FLQuant test_FLQuant_sexp_constructor(SEXP flq_sexp){
	FLQuant flq(flq_sexp);
	return flq;
}

// [[Rcpp::export]]
FLQuant test_FLQuant_dim_constructor(int nquant, int nyear, int nunit, int nseason, int narea, int niter){
    FLQuant flq(nquant, nyear, nunit, nseason, narea, niter);
    return flq;
}

// [[Rcpp::export]]
FLQuant test_FLQuant_copy_constructor(FLQuant flq){
    FLQuant out(flq);
    return out;
}

// Checking that a deep copy has been made
// [[Rcpp::export]]
Rcpp::List test_FLQuant_copy_constructor2(FLQuant flq1, int quant, int year, int unit, int season, int area, int iter, double value){
	FLQuant flq2(flq1); 
	flq2(quant,year,unit,season,area,iter) = value;
	return Rcpp::List::create(Rcpp::Named("flq1", flq1),
                            Rcpp::Named("flq2",flq2));
}

// [[Rcpp::export]]
FLQuant test_FLQuant_assignment_operator(FLQuant flq){
    FLQuant out;
    out = flq;
    return out;
}

// Checking that a deep copy has been made
// [[Rcpp::export]]
Rcpp::List test_FLQuant_assignment_operator2(FLQuant flq1, int quant, int year, int unit, int season, int area, int iter, double value){
	FLQuant flq2;
    flq2 = flq1; 
	flq2(quant,year,unit,season,area,iter) = value;
	return Rcpp::List::create(Rcpp::Named("flq1", flq1),
				Rcpp::Named("flq2",flq2));
}

//------------------ Accessors ----------------------
// [[Rcpp::export]]
std::vector<double> test_FLQuant_get_data(FLQuant flq){
	return flq.get_data();
}

// [[Rcpp::export]]
std::string test_FLQuant_get_units(FLQuant flq){
	return flq.get_units();
}

// [[Rcpp::export]]
Rcpp::IntegerVector test_FLQuant_get_dim(FLQuant flq){
	return flq.get_dim();
}

// [[Rcpp::export]]
Rcpp::List test_FLQuant_get_dimnames(FLQuant flq){
	return flq.get_dimnames();
}

// [[Rcpp::export]]
Rcpp::List test_FLQuant_get_dimnames2(FLQuant flq){
    Rcpp::List dimnames = flq.get_dimnames();
    dimnames[0] = Rcpp::CharacterVector::create("all");
    return Rcpp::List::create(Rcpp::Named("flq", flq),
            Rcpp::Named("dimnames", dimnames));
}


// [[Rcpp::export]]
int test_FLQuant_get_size(FLQuant flq){
	return flq.get_size();
}

// [[Rcpp::export]]
int test_FLQuant_get_nquant(FLQuant flq){
	return flq.get_nquant();
}

// [[Rcpp::export]]
int test_FLQuant_get_nyear(FLQuant flq){
	return flq.get_nyear();
}

// [[Rcpp::export]]
int test_FLQuant_get_nunit(FLQuant flq){
	return flq.get_nunit();
}

// [[Rcpp::export]]
int test_FLQuant_get_nseason(FLQuant flq){
	return flq.get_nseason();
}

// [[Rcpp::export]]
int test_FLQuant_get_narea(FLQuant flq){
	return flq.get_narea();
}

// [[Rcpp::export]]
int test_FLQuant_get_niter(FLQuant flq){
	return flq.get_niter();
}

//---------- () accessors -----------------

// [[Rcpp::export]]
int test_FLQuant_get_data_element(const FLQuant flq, int quant, int year, int unit, int season, int area, int iter){
	int out = 0;
	out = flq.get_data_element(quant,year,unit,season,area,iter);
	return out;
}

// [[Rcpp::export]]
double test_FLQuant_get_const_single_index_accessor(const FLQuant flq, const int element){
	double output = 0.0;
	output = flq(element);
	return output;
}

// [[Rcpp::export]]
double test_FLQuant_get_single_index_accessor(FLQuant flq, int element){
	double output = 0.0;
	output = flq(element);
	return output;
}

// [[Rcpp::export]]
FLQuant test_FLQuant_set_single_index_accessor(FLQuant flq, int element, double value){
    flq(element) = value;
    return flq;
}

// [[Rcpp::export]]
double test_FLQuant_const_get_accessor(const FLQuant flq, int quant, int year, int unit, int season, int area, int iter){
	double output = 0.0;
	output = flq(quant,year,unit,season,area,iter);
	return output;
}

// [[Rcpp::export]]
double test_FLQuant_get_accessor(FLQuant flq, int quant, int year, int unit, int season, int area, int iter){
	double output = 0.0;
	output = flq(quant,year,unit,season,area,iter);
	return output;
}

// [[Rcpp::export]]
FLQuant test_FLQuant_set_accessor(FLQuant flq, int quant, int year, int unit, int season, int area, int iter, double value){
	flq(quant,year,unit,season,area,iter) = value;
	return flq;
}

// [[Rcpp::export]]
double test_FLQuant_get_const_indices_accessor(const FLQuant flq, std::vector<unsigned int> indices){
    return flq(indices);
}

// [[Rcpp::export]]
double test_FLQuant_get_indices_accessor(FLQuant flq, std::vector<unsigned int> indices){
    return flq(indices);
}

// [[Rcpp::export]]
FLQuant test_FLQuant_set_indices_accessor(FLQuant flq, std::vector<unsigned int> indices, double value){
    flq(indices) = value;
    return flq;
}

// [[Rcpp::export]]
FLQuant test_FLQuant_get_all_iters(FLQuant flq, int quant, int year, int unit, int season, int area){
    return flq(quant,year,unit,season,area);
}

//// [[Rcpp::export]]
//FLQuant test_FLQuant_set_all_iters(FLQuant flq1, FLQuant flq2, int quant, int year, int unit, int season, int area){
//    FLQuant flq3 = flq2(quant,year,unit,season,area);
//    flq1(quant,year,unit,season,area) = flq3;
//    return flq1;
//}

//------------ Set methods -------------------------

// [[Rcpp::export]]
FLQuant test_FLQuant_set_data(FLQuant flq, std::vector<double> data_in){
	flq.set_data(data_in);
	return flq;
}

// [[Rcpp::export]]
FLQuant test_FLQuant_set_dimnames(FLQuant flq, Rcpp::List new_dimnames){
    flq.set_dimnames(new_dimnames);
    return flq;

}

// [[Rcpp::export]]
FLQuant test_FLQuant_set_units(FLQuant flq, std::string new_units){
    flq.set_units(new_units);
    return flq;

}

// [[Rcpp::export]]
FLQuant test_FLQuant_subset(FLQuant flq, const int quant_min, const int quant_max, const int year_min, const int year_max, const int unit_min, const int unit_max, const int season_min, const int season_max, const int area_min, const int area_max, const int iter_min, const int iter_max){
  return flq(quant_min, quant_max, year_min, year_max, unit_min, unit_max, season_min, season_max, area_min, area_max, iter_min, iter_max);
}

// [[Rcpp::export]]
Rcpp::List test_FLQuant_propagate_iters(FLQuant flq, const int iters){
    FLQuant flq2 = flq.propagate_iters(iters);
    return Rcpp::List::create(Rcpp::Named("flq", flq),
            Rcpp::Named("flq2", flq2));
}

// [[Rcpp::export]]
FLQuant test_FLQuant_fill(FLQuant flq, const double value) {
    flq.fill(value);
    return flq;
}

// [[Rcpp::export]]
FLQuantAD test_FLQuantAD_fill(FLQuantAD flq, const double value) {
    adouble value_ad = value;
    flq.fill(value_ad);
    return flq;
}

// [[Rcpp::export]]
FLQuantAD test_FLQuantAD_fill_double(FLQuantAD flq, const double value) {
    flq.fill(value);
    return flq;
}


//------------------ Others --------------------------------------
// [[Rcpp::export]]
int test_FLQuant_FLQuant_match_dims(FLQuant flq1, FLQuant flq2){
    return flq1.match_dims(flq2);
}


// [[Rcpp::export]]
FLQuant test_FLPar_to_FLQuant(SEXP flp){
    FLQuant flq = FLPar_to_FLQuant(flp);
    return flq;
}

//--------- Shortcuts ----------------------
/*
// [[Rcpp::export]]
FLQuant test_FLQuant_year_sum(FLQuant flq){
    FLQuant flq_out = year_sum(flq);
    return flq_out;
}
*/

//--------- Time get data elements ------------------

/*
// [[Rcpp::export]]
void test_get_data_elememts(FLQuant flq, std::vector<int> indices, const int reps){
    int out;

    clock_t start, end;
    start = clock();
    for (int i = 1; i <= reps; ++i){
        flq.get_data_element(indices[0], indices[1], indices[2], indices[3], indices[4], indices[5]);
    }
    end = clock();
    Rprintf("data element CPU time: %f\n", (end - start) / (double)(CLOCKS_PER_SEC));
    start = clock();
    for (int i = 1; i <= reps; ++i){
        flq.get_data_element2(indices[0], indices[1], indices[2], indices[3], indices[4], indices[5]);
    }
    end = clock();
    Rprintf("data element 2 CPU time: %f\n", (end - start) / (double)(CLOCKS_PER_SEC));

    return;

}
*/


/*
// [[Rcpp::export]]
void test_subset_speed(FLQuant flq, std::vector<int> indices1, std::vector<int> indices2, const int reps){
    clock_t start, end;
    start = clock();
    FLQuant out;
    for (int i = 1; i <= reps; ++i){
        out = flq(indices1[0], indices2[0], indices1[1], indices2[1], indices1[2], indices2[2], indices1[3], indices2[3], indices1[4], indices2[4], indices1[5], indices2[5]);
    }
    end = clock();
    Rprintf("new flq CPU time: %f\n", (end - start) / (double)(CLOCKS_PER_SEC));
    return;
}
*/



