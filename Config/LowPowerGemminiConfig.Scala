
package chipyard

import org.chipsalliance.cde.config.{Config}
import freechips.rocketchip.subsystem._
import freechips.rocketchip.rocket._
import gemmini._

// Low-power configuration with Gemmini accelerator
class LowPowerGemminiConfig extends Config(

  new WithNBigCores(1) ++                                           // Single, in-order Rocket core
  new chipyard.config.WithSystemBusWidth(64) ++                     // Reduce bus width for efficiency
  new chipyard.config.WithPeripheryBusFrequency(250.0) ++           // Reduce peripheral bus frequency
  new chipyard.config.WithMemoryBusFrequency(250.0) ++              // Reduce memory bus frequency
  new chipyard.config.WithControlBusFrequency(250.0) ++             // Reduce control bus frequency
  new freechips.rocketchip.subsystem.WithDontDriveBusClocksFromSBus ++ // Enable clock gating for bus clocks
  new freechips.rocketchip.subsystem.WithNoMMIOPort ++              // Disable MMIO master port
  new freechips.rocketchip.subsystem.WithNoSlavePort ++             // Disable MMIO slave port
  new chipyard.harness.WithTieOffInterrupts ++                      // Tie off interrupts
  new testchipip.soc.WithMbusScratchpad(base = 0x08000000, size = 32 * 1024) ++ // Reduce scratchpad size
  new chipyard.config.AbstractConfig                                // Extend the abstract base configuration
)