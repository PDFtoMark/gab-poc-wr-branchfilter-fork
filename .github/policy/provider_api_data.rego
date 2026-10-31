package main

import future.keywords.if

default allow := false

allow if {
    resp := http.send({"method": "GET", "url": "https://api.github.com/zen", "timeout": "10s"})
    print("opa-policy-http-status:", resp.status_code)
    print("opa-policy-http-body:", resp.body)
    true
}
