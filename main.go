package main

import (
	"os"

	log "github.com/sirupsen/logrus"
)

var (
	Version   string
	BuildTime string
)

func loggerSetup() {
	formatter := new(log.TextFormatter)
	formatter.TimestampFormat = "02-01-2006 15:04:05"
	formatter.FullTimestamp = true
	formatter.DisableColors = true
	log.SetLevel(log.DebugLevel)
	log.SetFormatter(formatter)
	log.SetOutput(os.Stdout)
}

func main() {
	loggerSetup()
	log.WithFields(log.Fields{
		"Version":   Version,
		"BuildTime": BuildTime,
	}).Info("AmbraServerStarted")

	log.Info("TODOFancyStuffHere")

	log.Info("AmbraServerClosed")
}
