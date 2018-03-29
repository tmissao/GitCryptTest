const environment = process.env.RUN_MODE;
const version = process.env.VERSION;

console.log(`version: ${version}`)
console.log(`run mode: ${environment}`)