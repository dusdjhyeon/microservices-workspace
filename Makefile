project:=msupandrunning

CHECKOUT_BIN:=bin/checkout.exe

.PHONY: default
default: update start

.PHONY: start
start: 
	- ${PWD}/bin/start.cmd

.PHONY: stop
stop: 
	- ${PWD}/bin/stop.cmd

.PHONY: update
update:
	- @${CHECKOUT_BIN}

.PHONY: ps
ps:
	- @docker ps -a --format="table {{ .ID }}\\t{{ .Names }}\\t{{ .Status }}\\t{{ .Image }}\\t{{ .Ports }}" -f network=${project}_default

.PHONY: proxystart
proxystart:
	docker-compose -p ${project} up -d

.PHONY: proxystop
proxystop:
	docker-compose -p ${project} down

.PHONY: logs
logs:
	docker-compose -p ${project} logs -t
