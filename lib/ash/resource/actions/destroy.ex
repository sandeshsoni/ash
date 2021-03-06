defmodule Ash.Resource.Actions.Destroy do
  @moduledoc "Represents a destroy action on a resource."

  defstruct [:name, :primary?, type: :destroy]

  @type t :: %__MODULE__{
          type: :destroy,
          name: atom,
          primary?: boolean
        }

  @opt_schema [
    name: [
      type: :atom,
      doc: "The name of the action"
    ],
    primary?: [
      type: :boolean,
      default: false,
      doc: "Whether or not this action should be used when no action is specified by the caller."
    ]
  ]

  @doc false
  def opt_schema, do: @opt_schema
end
