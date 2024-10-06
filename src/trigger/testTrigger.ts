import { logger, schedules, wait } from "@trigger.dev/sdk/v3";

export const testTrigger = schedules.task({
  id: "test-trigger",
  //every minute
  cron: "* * * * *",
  maxDuration: 360, // 5 minutes
  run: async (payload, { ctx }) => {
    // The payload contains the last run timestamp that you can use to check if this is the first run
    //  And calculate the time since the last run

    const distanceInMs =
      payload.timestamp.getTime() -
      (payload.lastTimestamp ?? new Date()).getTime();

    logger.log("testTrigger", { payload, distanceInMs });

    // Wait for 5 seconds
    await wait.for({ seconds: 5 });

    // Format the timestamp using the timezone from the payload
    const formatted = payload.timestamp.toLocaleString("en-US", {
      timeZone: payload.timezone,
    });

    logger.log("Hello I am running -" + formatted);
  },
});