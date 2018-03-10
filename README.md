# Fortune

Tells your fortune using commandline script.

| PARAMETER  | DEFAULT | DESCRIPTION |
| --------- |:-------:|:----------- |
|SLEEP_TIME |    2    | Regeneration time for quote |
|VERSION    |  0.1.3  | Version displayed in footer  |


To run standalone:

	docker build -t fortune:latest .

	# run with defaults
	docker run -ti fortune:latest

	# override defaults
	docker run -e SLEEP_TIME=2 -e VERSION=0.1.1 -ti fortune:latest
