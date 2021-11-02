# 50k pod in n deployments
## PodstartTime vs prometheus time
```
deployment:            |  1  |  5   |  20  |  50  |  number
-------------------------------------------------------
pod start:             | 303 |  255 |  147 |  148 |  second
-------------------------------------------------------
collect finished:      | 303 |  156 |  140 |  139 |  second
--------------------------------------------------------
throughput:            | 165 |  196 |  340 |  337 |  second
--------------------------------------------------------
YK metric throughput:  | 165 |  320 |  357 |  359 |  second
```
