% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/print.R
\name{print_readable}
\alias{print_readable}
\title{Print the Human-readable Representation of the Proto Object}
\usage{
print_readable(x)
}
\arguments{
\item{x}{The proto object}
}
\description{
Print the Human-readable Representation of the Proto Object
}
\examples{
\dontrun{

library(onnx)

graph_def <- make_graph(
    nodes = list(
      make_node("FC", list("X", "W1", "B1"), list("H1")),
      make_node("Relu", list("H1"), list("R1")),
      make_node("FC", list("R1", "W2", "B2"), list("Y"))
    ),
    name = "MLP",
    inputs = list(
      make_tensor_value_info('X' , onnx$TensorProto$FLOAT, list(1L)),
      make_tensor_value_info('W1', onnx$TensorProto$FLOAT, list(1L)),
      make_tensor_value_info('B1', onnx$TensorProto$FLOAT, list(1L)),
      make_tensor_value_info('W2', onnx$TensorProto$FLOAT, list(1L)),
      make_tensor_value_info('B2', onnx$TensorProto$FLOAT, list(1L))
    ),
    outputs = list(
      make_tensor_value_info('Y', onnx$TensorProto$FLOAT, list(1L))
    )
)
print_readable(graph_def)

}
}
