#!/usr/bin/env zx

let globals = await $`npm list -g --depth=0`

globals = globals.stdout
  .split("\n")
  // Remove empty items
  .filter((e) => e)
  // Trim non alphanumeric, @, and spaces
  .map((e) => e.replace(/[^\w.@]+/g, " ").trim())
  // @TODO: Remove npm dep
  .filter((e) => e.match(/^[^npm].*/))

// Remove first entry, the node path
globals.shift()

// Revert to single string
globals = globals.join(" ")

fs.writeFile(path.join(__dirname, "../node", "globals.txt"), globals)

console.log(chalk.magenta("Found the following global node packages"))
console.log(chalk.green("\n📦", globals))
console.log(chalk.magenta("\nUpdated:"), chalk.underline.yellow("globals.txt"))
