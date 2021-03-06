load(":dep.bzl", "my_rule_impl")

my_rule = rule(
    implementation = my_rule_impl,
    doc = "This is my rule. It does stuff.",
    attrs = {
        "first": attr.label(
            mandatory = True,
            doc = "first my_rule doc string",
            allow_files = True,
            single_file = True,
        ),
        "second": attr.string_dict(mandatory = True),
    },
)
