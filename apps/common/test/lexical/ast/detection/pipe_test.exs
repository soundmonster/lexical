defmodule Lexical.Ast.Detection.PipeTest do
  alias Lexical.Ast.Detection

  use Lexical.Test.DetectionCase,
    for: Detection.Pipe,
    assertions: [[:pipe, :*]],
    variations: [:function_arguments],
    skip: [[:module_attribute, :multi_line_pipe]]

  test "is false if there is no pipe in the string" do
    refute_detected ~q[Enum.foo]
  end
end
