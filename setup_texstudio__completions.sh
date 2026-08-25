#!/bin/bash

set -Eeu -o pipefail # debug

# Setup TexStudio completions, refer to environment_setup scripts for full setup
setup__texstudio__completions(){

mkdir -p $HOME/.config/texstudio/completion/user/

tee $HOME/.config/texstudio/completion/user/authesis2.cwl &>/dev/null <<EOF
# =======================================================================
# FOR .cwl FILES ALL INPUT ARGUMENTS SHALL START WITH LOWER-CASE LETTER !
# =======================================================================

# Text Formatting
\textFormatRegular{text}	# Format text to regular
\textFormatBold{text}		# Format text to __bold__
\textFormatItalic{text}		# Format text to _italic_

\minitext{minipage_text}	# Insert minipage with text body

\PartyMember{text}		# Notation of Cryptographic Systems Party Member

# REFERENCES

\refSection{section_label}		# Reference: Section
\refSubsection{subsection_label}	# Reference: Sub Section
\refSubSubsection{subsubsection_label}	# Reference: Sub Sub Section

\refChapter{chapter_label}		# Reference: Chapter

\refFigure{image_label}			# Reference: Image
\refTable{table_label}			# Reference: Table
\refEquation{equation_label}		# Reference: Equation
\refTheorem{theorem_label}		# Reference: Theorem
\refPseudo{pseudocode_label}		# Reference: Pseudocode

# TODOs, WARNs
\todo{task_text}			# Highlight of TODO
\info{info_text}			# Highlight of INFO

# MATH
\mathFormulaObject{math_formula}				# Add inline math formula
\mathFormulaAlgebraicClosureOf{mathObject}			# Notation for Algebraic Closure
\mathFormulaFiniteFieldWithIndex{field_index}			# Notation for Indexed Finite Field
\mathFormulaFieldWithExtension{field_index_power}		# Notation for Finite Field Extension
\mathFormulaIsSubsetOf{this_set}{subset_of_this}		# Set: Subset notation
\mathFormulaIsInSet{this_set}{in_this_set}			# Set: In Set notation
\mathFormulaSetIntersection{set_intersects}{this_set}		# Set: Intersection notation	
\mathFormulaSetExcludedFrom{this_set}{excluded_from}		# Set: Exclusion notation
\mathFormulaIsSubsetOfField{this_set}{subset_of_this}		# Field Subset notation
\mathFormulaTwoSideSubSet{this}{subsetof}			# Two-Side: Subset notation
\mathFormulaTwoSideSubSetEquals{this}{subset_and_equals_to}	# Two-Side: Subset and equals notation	
\mathFormulaTwoSideSupSet{this}{supset_of_this}			# Two-Side: Supset notation
\mathFormulaTwoSideSupSetEquals{this}{supset_and_equals_of_this} # Two-Side: Supset and equals notation
\mathFormulaTwoSidesSimilar{this}{similar_with_this}		# Two-Side: D1 ~ D2


\mathFormulaNumberOf{this}		# Notation: #(_)
\mathFormulaDegreeOf{degree_of_this}	# Notation: deg(_)
\mathFormulaDegreeOfPar{degree_of_this}	# Notation: deg(_)


\mathFormulaPolynomialRing{ring_notation} 			# Polynom Ring notation
\mathFormulaPolynomialRingWithIndex{polynom_ring}{ring_index}	# Polynom Ring notation with Index
\mathFormulaPolynomialRingDefinedOver{ring_notation}{field}{polynom}	# Polynom Ring defined over Field: R = <Field>/<Polynom>


## MATH::OPERATIONS
\mathFormulaIsDivides{this_divides}{this}			# Division notation
\mathFormulaLeftDividesRight{this_divides}{this}		# Division notation
\mathFormulaFieldExtensionOverField{this}{over_field}		# Finite Field Extension Notation
\mathFormulaPartialDerivative{first_variable}{second_variable}	# Partial Derivative Notation

\mathFormulaRaisePower{raise_this}{to_this_power}		# Raise to Power: a^b
\mathFormulaPowerOf{this}{raised_to_this}			# Raise to Power: a^b
\mathFormulaSqrt{square_of}					# Square-root: sqrt(_)

\mathFormulaSumFromTo{this}{from_this}{to_this}		        # Summarized <body> from lower to upper boundw


\mathFormulaMapInto{this}{mapped_into_this}			# Map-to notation: A |-> B
\mathFormulaInitialise{this}{init_from_this}			# Init notation: T <- S
\mathFormulaProjectInto{this}{projected_into_this}		# Projection notation: Q -> R
\mathFormulaSetOfPointsInProjectiveSpace{point1}{point2}{poin3} # Set of Points in Projective Space: X1:Y1:Z1

\mathFormulaBilinearMapIndexed{field1}{field1_Index}{field2}{field2_Index}{targetField}{targetField_Index} # Bilinear Map between Fields 
\mathFormulaBilinearMapBetweenGroups{field1}{field2}{targetField}	# Bilinear Mapping Between Groups: G1 x G2 -> Gt

\mathFormulaSqrtNRootOf{n_root_of}{this}	# n-th square root
\mathFormulaLogBase{log_base}{log_power}	# n-th log 

## MATH::LIN_ALBEGRA
\mathFormulaLinAlgLinCombination{sum_form_of_this_vector} # Summarized form of linear combination of vector
\mathFormulaAbsNormOfVector{l1_norm_of_this_vector} 		# L1-norm of vector
\mathFormulaEuclidNormOfVector{l2_norm_of_this_vector}		# L2-norm of vector
\mathFormulaPNormOfVector{p_norm_of_this_vector}		# p-norm of vector
\mathFormulaInfiniteNormOfVector{infinite_norm_of_this_vector}	# infinite-norm of vector

## MATH::GROUPS
\mathFormulaOrderOfGroup{group}	 # Order of Group: |G| 


## MATH::LISTs_ARRAYs_INTERVALs
\mathFormulaSetFromTo{1st_elem}{last_elem}			# List: (a1, ..., an)
\mathFormulaArrayWithIndex{1st_elem}{last_elem}{index}		# List: (a1, ..., an)_i
\mathFormulaIntervalFromTo{interval_start}{interval_end}	# Interval: [a1, ..., an]	

## MATH::ELLIPTIC_CURVE
\mathFormulaEllipticCurve{curve_notation}			# Elliptic Curve: E
\mathFormulaEllipticCurvePar{curve_notation}{field}		# Elliptic Curve: E(_)
\mathFormulaEllipticCurveOverField{field}			# Elliptic Curve: E(K)
\mathFormulaEllipticCurveDefinedOverField{slash_field}		# Elliptic Curve: E/K
\mathFOrmulaEllipticCurveDefinePoint{point}{coord1_of_point}{coord2_of_point}	# Curve point: P_{x,y}
\mathFormulaEllipticCurveNumberOfPointsOnCurve{finite_field}	# Number of points: #E(K)
\mathFormulaEllipticCurvePointMinus{point}			# Elliptic Curve Point: -R
\mathFormulaEllipticCurvePointPlus{point}			# Elliptic Curve Point: +R
\mathFormulaEllipticCurveCompositionLaw{point_equals_to}{this_added}{to_this}	# Elliptic Curve Point Addition
\mathFormulaEllipticCurvePointAddition{point_equals_to}{this_added}{to_this} # Elliptic Curve Point Addition: R+P=Q
\mathFormulaEllipticCurvePointMultiplication{point_equals_to}{double_of_this} # Elliptic Curve Point Multiplication: PP
\mathFormulaEllipticCurvePoint{point} # Elliptic Curve Point general notation: P
\mathFormulaEllipticCurvePointCoord{point}{point_index} # Elliptic Curve Point Coordinate: P_x

\mathFormulaAlgebraicClosureOf{this_field}	# Algebraic Closure of Field
\mathFormulaAlgebraicClosureOfFiniteFieldWithIndex{field_index} # Algebraic Closure of Finite Field

\mathFormulaAutomorphismOf{this}	# Automorphism of Elliptic Curve: Aut(E)
\mathFormulaAutomorphismOfPar{this}	# Automorphism of Elliptic Curve: Aut(E)
\mathFormulaEndomorphismOfPar{this}	# Endomorphism of Elliptic Curve: End(E)

\mathFormulaIsomorphism{ring_index}		# Isomorphism: fi_1
\mathFormulaIsomorphismPar{this}{ring_index}	# Isomorphism in ring: fi_1, fi_2
\mathFormulaIsomorphismWithIndexPar{this}{index} # Isomorphism in ring with index: fi_1(x), fi_2(y)
\mathFormulaCharacteristicOfAlgebraicFieldPar{field} # Field Characteristic: Char(K)

\mathFormulaTraceOfFrobeniusWithIndex{index}	# Trace of Frobenius (t) with index: t_l

\mathFormulaOrderOfGroup{group}			# Order of group: |G|
\mathFormulaOrderOfWithIndex{this}{order_index} # Order of with index: ord_i(F)

\mathFormulaPrincipalDivisor{over_curve}		# Principal Divisor
\mathFormulaDivisorOfPar{curve}{divisor_index}		# Elliptic Curve divisor
\mathFormulaDivisorWithDegreeOf{over_curve}{degree}	# Divisor over E with degree
\mathFormulaSetOfDivisors{divisor}{degree_equal_to} 	# Set of Divisors: {D \in Div(E): Deg(D)=0}
\mathFormulaDivisorProperSubgroupOf{degree}{over_curve} # Proper Subgroup of Divisor. Div^0(E) \subset Div(E)

\mathFormulaDivisorWithIndex{index}			# Divisor: D1
\mathFormulaPicardGroupWithIndexPar{curve_notation}{group_index}	# Picard group:  Pic^0 (E)
\mathFormulaDivisorGroupWithIndexPar{curve_notation}{group_index}	# Divisor group: Div^0 (E)


## MATH::PAIRINGS
\mathFormulaGeneralPairing{set_of_points_in_set1}{set_of_points_in_set2} # Pairing notation: e(G1,G2)
\mathFormulaPairing{notation_of_pairing}{set_of_points_in_set1}{set_of_points_in_set2} # Pairing Notation: _(G1,G2)

## MATH::EQUATIONS
\mathFormulaTwoSidesEqual{this}{equals_to_this}				# Two-Side: a = b
\mathFormulaTwoSidesCongruent{this}{congruent_to_this}			# Two-Side: a congruent b
\mathFormulaTwoSidesCongruentCondition{this}{congruent_to_this}		# Two-Side: a congruent b if
\mathFormulaTwoSidesNotEqual{this}{not_equal_to_this}			# Two-Side: a != b
\mathFormulaTwoSidesLeftLess{this}{less_than_this}			# Two-Side: a < b
\mathFormulaTwoSidesLeftEqLess{this}{less_equal_than_this}		# Two-Side: a <= b
\mathFormulaTwoSidesLeftGreater{this}{greater_than_this}		# Two-Side: a > b
\mathFormulaTwoSidesLeftEqGreater{this}{greater_equal_than_this}	# Two-Side: a >= b
\mathFormulaMuchGreaterThan{this}{much_greater_than_this}		# Two-Side: a >> b
\mathFormulaMuchLessThan{this}{much_less_than_this}			# Two-Side: a << b
\mathFormulaTwoSidesApproximate{this}{approx_equals_to_this}		# Two-Side: a ~= b
\mathFormulaTwoSidesOplus{this}{oplus_with_this}			# Two-Sides: P oplus Q

## MATH::ARITHMETICS

\mathFormulaModDivision{this}{of_this} # Modular division notation: a mod b

## MATH::CASES
\insertCaseEnvironment{this_equals_to}{insert_cases_here}
\insertCase{case_body}

## MATH::FUNCTIONS
\mathFormulaFunctionGeneralPar{function_argument}	# General Function notation with arguments: f(x,y)

## MATH::ENVIRONMENTS
\insertEquationEnvironment{equation_body}					# Insert Equation
\\insertEquationEnvironmentWithLabel{equation_body}{equation_label}		# Insert Equation with Label
\insertEquationEnvironmentAlignedWithLabel{equation_body}{equation_label}	# Insert Aligned Equation with Label
\insertEquationEnvironmentAligned{equation_body}				# Insert Aligned Equation
\insertListEnvironment{list_body}						# Insert List Environment
\addListItem{list_item}								# Add list item
\addListItemTodo{todo_list_item}						# Add todo item
\addEquation{equation_body}							# Add Equation within Environment
\addSplitEquation{equation_body}						# Add Split Equation within Environment
\insertTheoremEnvironment{theorem_name}{theorem_body}{theorem_label}		# Insert Theorem Environment
\insertCodeEnvironment{code_body}{code_label}					# Insert Code Snippet Environment
\insertDefinitionEnvironment{definition_body}					# Insert Definition Environment
\insertExampleEnvironment{example_body}						# Insert Example Environment

EOF
}
