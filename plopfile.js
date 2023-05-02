module.exports = function (plop) {
  plop.setGenerator("component", {
    description: "application component logic",
    prompts: [
      {
        type: "input",
        name: "name",
        message: "Logic Component name please",
      },
      {
        type: "input",
        name: "entity",
        message: "Entity name please",
      },
    ],
    actions: [
      {
        type: "add",
        path: `components/{{pascalCase name}}/{{lowerCase name}}.vhd`,
        templateFile: "templates/main.vhd.hbs",
      },
      {
        type: "add",
        path: `components/{{pascalCase name}}/{{lowerCase name}}_tb.vhd`,
        templateFile: "templates/tb.vhd.hbs",
      },
      {
        type: "add",
        path: `components/{{pascalCase name}}/Makefile`,
        templateFile: "templates/makefile.hbs",
      },
      {
        type: "add",
        path: `components/{{pascalCase name}}/windows.bat`,
        templateFile: "templates/windows.bat.hbs",
      },
    ],
  });
};
