{
    description = "Flake templates";

    outputs = {self}: {
        templates = {
            default = {
                path = ./devshell;
                description = "Default devshell template";
            };
        };
    };
}
