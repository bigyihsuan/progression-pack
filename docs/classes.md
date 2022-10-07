# css styling for mermaid docs

```mermaid
flowchart LR
it[Item]
fl{{Fluid}}
ma([Machine])

it --> ma --> fl

classDef item fill:#660;
classDef fluid fill:#009;
classDef machine fill:#666;

class it item
class fl fluid
class ma machine
```
