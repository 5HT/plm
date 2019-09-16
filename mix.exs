defmodule PLM.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :plm,
      version: "0.9.1",
      elixir: "~> 1.7",
      description: "PLM Product Lifecycle Management",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc lib mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :plm,
      links: %{"GitHub" => "https://github.com/o7/plm"}
    ]
  end

  def application() do
    [
      mod: {PLM.Application, []},
      applications: [:syn, :form, :nitro, :ranch, :cowboy, :rocksdb, :kvs, :erp, :bpe, :n2o]
    ]
  end

  def deps() do
    [
      {:ex_doc, "~> 0.11", only: :dev},
      {:asn1ex, github: "vicentfg/asn1ex", only: :dev},
      {:kvs, "~> 6.7.7"},
      {:n2o, "~> 6.8.1"},
      {:nitro, "~> 4.7.7"},
      {:cowboy, "~> 2.5.0"},
      {:rocksdb, "~> 1.3.2"},
      {:syn, "~> 1.6.3"},
      {:erp, "~> 0.9.2"},
      {:bpe, "~> 4.9.1"},
      {:form, "~> 4.7.0"}
    ]
  end
end
