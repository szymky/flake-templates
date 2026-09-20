{
    description = "Flake templates";

    outputs = {self}: {
        templates = {
            default = {
                path = ./devshell;
                description = "Default devshell template";
            };
            rust = {
                path = ./rust;
                description = "Rust devshell";
            };
            rust-window = {
                path = ./rust-window;
                description = "Rust devshell for windowing";
            };
        };
    };
}
