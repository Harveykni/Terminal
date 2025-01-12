import time

def stopwatch():
    print("Press ENTER to start the stopwatch. Press CTRL+C to stop.")
    try:
        input()
        start_time = time.time()
        print("Stopwatch started. Press CTRL+C to stop.")
        while True:
            elapsed_time = time.time() - start_time
            print(f"Elapsed Time: {elapsed_time:.2f} seconds", end="\r")
            time.sleep(0.1)
    except KeyboardInterrupt:
        print("\nStopwatch stopped.")
        print(f"Total Time: {time.time() - start_time:.2f} seconds")

if __name__ == "__main__":
    stopwatch()
