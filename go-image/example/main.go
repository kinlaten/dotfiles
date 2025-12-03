package main

import (
	"fmt"
	"image/png"
	"log"
	"math/rand"
	"os"
	"time"

	"github.com/kbinani/screenshot"
)

// takeScreenshot captures the entire screen of all displays and saves them to PNG files.
func takeScreenshot() {
	n := screenshot.NumActiveDisplays()
	if n <= 0 {
		log.Println("No active displays found.")
		return
	}

	for i := 0; i < n; i++ {
		bounds := screenshot.GetDisplayBounds(i)

		img, err := screenshot.CaptureRect(bounds)
		if err != nil {
			log.Printf("Error capturing display %d: %v\n", i, err)
			continue
		}

		// Create a file with a timestamp to save the screenshot.
		fileName := fmt.Sprintf("screenshot_display_%d_%s.png", i, time.Now().Format("2006-01-02_15-04-05"))
		file, err := os.Create(fileName)
		if err != nil {
			log.Printf("Error creating file for display %d: %v\n", i, err)
			continue
		}
		defer file.Close()

		err = png.Encode(file, img)
		if err != nil {
			log.Printf("Error encoding screenshot for display %d: %v\n", i, err)
			continue
		}

		log.Printf("Screenshot for display %d saved to %s\n", i, fileName)
	}
}

func main() {
	// Seed the random number generator for unique sequences.
	rand.Seed(time.Now().UnixNano())

	log.Println("Screenshot utility started. Taking screenshots at random intervals.")

	// Initial screenshot on startup.
	takeScreenshot()

	for {
		// Generate a random duration between 48 and 161 seconds.
		min, max := 48, 161
		randomSeconds := rand.Intn(max-min+1) + min
		sleepDuration := time.Duration(randomSeconds) * time.Second

		log.Printf("Waiting for %s before next screenshot.", sleepDuration)

		// Pause execution for the random duration.
		time.Sleep(sleepDuration)

		// Take the next screenshot.
		takeScreenshot()
	}
}
