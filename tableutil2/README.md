# tableutil2

## Changes
* None so far.

## Installation
`npm i @rbxts/tableutil2`

## Example Usage
```ts
import Utilities from "@rbxts/tableutil2";

Utilities.DeepCopy(new Map<string, number>()); // Copied - Map<string, number>
Utilities.DeepCopy([1, 5, 8]); // Copied - [1, 5, 8]
Utilities.DeepCopy({ 
    ["key"]: { 
        ["key2"]: "value"
    } 
}) // Copied - { ["key"]: { ["key2"]: "value" } }
```