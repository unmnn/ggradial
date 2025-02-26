% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/radial_barchart_compare.R
\name{radial_barchart_compare}
\alias{radial_barchart_compare}
\title{Creates a radial barchart which shows a cluster's average feature values at different time periods.}
\usage{
radial_barchart_compare(
  df,
  group_names,
  id = ".id",
  phase = ".phase",
  feature_names = NULL,
  inner_label = "",
  color_inner_circle = "grey60",
  scale_rng = c(-1, 1) * 1.5,
  interactive = FALSE,
  tooltip_bars = "",
  tooltip_labels = NULL,
  delta_threshold = 0.25,
  show_group_names = TRUE
)
}
\arguments{
\item{df}{The dataset as data frame. Should be scaled. See ?scale.}

\item{group_names}{Character vector with group names of features.
The lengths of df and group_names must be equal. Group
names are displayed in the inner circle.}

\item{id}{String containing the column name of the ids in df (optional).}

\item{phase}{String containing the column name of the phase in df (optional).}

\item{feature_names}{Column names of all the features (optional).}

\item{inner_label}{Label inside the inner circle, e.g. name of the chart (optional).}

\item{color_inner_circle}{Color of the inner circle (optional).}

\item{scale_rng}{Min and max values to be shown (optional).}

\item{interactive}{Boolean to indicate whether the plot should be interactive or not (optional).}

\item{tooltip_bars}{String to choose which tooltip texts will be displayed for the bars (when interactive).
Options to select from: average, standard deviation, ci (confidence interval), difference, percentage difference, all. Default is average (optional).}

\item{tooltip_labels}{Data frame to provide the tooltip texts for the labels (when interactive), needs to have a "label" and a "description" column. The description provides the tooltip text for the assigned label (optional).}

\item{delta_threshold}{Numeric value that must be exceeded to show that the treatment had an effect. Must be between 0.05 and 1.0 (optional).}

\item{show_group_names}{Boolean to indicate whether the group names should be shown inside the inner circle. Default is true (optional).}
}
\value{
the radial barchart as ggplot
}
\description{
Creates a radial barchart which shows a cluster's average feature values at different time periods.
}
\examples{
radial_barchart_compare(data_cluster, group_names, id = ".id", phase = ".phase", feature_names = NULL, inner_label = "Comparison", color_inner_circle = "#ffff00", scale_rng = c(-1.55,1.55), interactive = TRUE, tooltip_bars = "ci", tooltip_labels = data.frame(label = c("f_5"), description = c("Important")), show_group_names = FALSE)
}
