# Module 3 – Wi-Fi PHY Layer Concepts

### Question: What are the different 802.11 PHY layer standards? Compare their characteristics.

Answer:
IEEE 802.11 includes several PHY standards, and each generation improves speed, coverage, or efficiency in a different way.

- 802.11a:
  - Band: 5 GHz
  - Speed: Up to 54 Mbps
  - Technology: OFDM
  - Characteristics: Better speed than early 2.4 GHz standards, with lower interference but shorter range

- 802.11b:
  - Band: 2.4 GHz
  - Speed: Up to 11 Mbps
  - Technology: DSSS
  - Characteristics: Longer range, but slower and more affected by interference

- 802.11g:
  - Band: 2.4 GHz
  - Speed: Up to 54 Mbps
  - Technology: OFDM
  - Characteristics: Combines the range of 2.4 GHz with the speed of OFDM-based transmission

- 802.11n (Wi-Fi 4):
  - Band: 2.4 GHz and 5 GHz
  - Speed: 72 Mbps to 600 Mbps
  - Technology: MIMO and channel bonding
  - Characteristics: Strong improvement in throughput, range, and reliability

- 802.11ac (Wi-Fi 5):
  - Band: 5 GHz
  - Speed: Up to about 3.4 Gbps
  - Technology: MU-MIMO and wider channels
  - Characteristics: High throughput and better efficiency in clean spectrum

- 802.11ax (Wi-Fi 6 / 6E):
  - Band: 2.4 GHz, 5 GHz, and 6 GHz
  - Speed: Up to about 9.6 Gbps
  - Technology: OFDMA, MU-MIMO, and BSS Coloring
  - Characteristics: Designed for dense environments and improved performance per device

---

### Question: What are DSSS and FHSS? How do they function?

Answer:

- DSSS (Direct Sequence Spread Spectrum):
  DSSS spreads a signal using a high-rate spreading code so the energy is distributed across a wider band. This improves resilience against interference and noise. It was commonly used in 802.11b networks.

- FHSS (Frequency Hopping Spread Spectrum):
  FHSS changes the carrier frequency repeatedly in a pseudo-random hop pattern. Because the transmission keeps moving between frequencies, it is less likely to suffer from persistent interference and is harder to disrupt.

---

### Question: How do modulation schemes work in the PHY layer? Compare their usage.

Answer:
Modulation is the process of encoding binary data onto a radio carrier by changing phase, amplitude, or both. The higher the modulation order, the more bits can be carried in each symbol, but the signal also becomes more sensitive to noise.

Common schemes:

- BPSK:
  - 1 bit per symbol
  - Very robust but relatively slow

- QPSK:
  - 2 bits per symbol
  - Balanced between reliability and speed

- 16-QAM:
  - 4 bits per symbol
  - Faster, with moderate tolerance to signal degradation

- 64-QAM:
  - 6 bits per symbol
  - High throughput but requires better signal quality

Usage:
- Older standards such as 802.11a/b/g use BPSK, QPSK, 16-QAM, and 64-QAM
- Newer standards such as 802.11n/ac/ax use higher-order QAM schemes to raise throughput when conditions are good

---

### Question: What is OFDM and why is it important in WLAN?

Answer:
OFDM stands for Orthogonal Frequency Division Multiplexing. It breaks a channel into many narrow subcarriers that operate together while remaining orthogonal to one another.

Advantages:
- Handles multipath reflections effectively
- Supports higher data rates
- Uses spectrum efficiently
- Works well in environments where indoor reflections are common

---

### Question: How are Wi-Fi frequency bands structured?

Answer:

- 2.4 GHz Band:
  - Used by 802.11b, 802.11g, and 802.11n
  - Has limited channels and more overlap
  - Is more crowded because many devices operate here

- 5 GHz Band:
  - Used by 802.11a, 802.11n, 802.11ac, and 802.11ax
  - Provides more available channels
  - Supports wider bandwidths and higher speeds

- 6 GHz Band:
  - Introduced for Wi-Fi 6E and newer technologies
  - Offers cleaner spectrum with very little congestion
  - Is useful for high-performance and low-latency deployments

---

### Question: What is the role of Guard Intervals in WLAN?

Answer:
Guard Intervals are short pauses inserted between OFDM symbols. They reduce the chance that delayed reflections will overlap with the next symbol.

- Standard GI: about 800 ns
- Short GI: about 400 ns

Impact:
- Shorter guard intervals can improve throughput
- In difficult RF environments, a short GI may increase the risk of symbol errors

---

### Question: Describe the structure of an 802.11 PHY frame.

Answer:
A PHY frame is typically made up of three major parts:

- Preamble:
  - Helps the receiver synchronize with the incoming transmission
  - Includes timing and start-of-frame markers

- Header:
  - Carries transmission details such as signal and length information

- Payload (PSDU):
  - Contains the actual MAC data being carried over the air

---

### Question: What is the difference between OFDM and OFDMA?

Answer:

- OFDM:
  - Splits the channel into multiple subcarriers
  - Normally serves one user at a time in a transmission slot

- OFDMA:
  - Also splits the channel into subcarriers
  - Allocates different subcarrier groups to multiple users simultaneously
  - Makes better use of the channel in crowded networks

---

### Question: What is the difference between MIMO and MU-MIMO?

Answer:

- MIMO:
  - Uses multiple antennas to improve communication with one device
  - Increases throughput and signal reliability

- MU-MIMO:
  - Uses multiple antennas to serve several devices at once
  - Improves overall capacity and reduces waiting time

---

### Question: What are PPDU, PLCP, and PMD?

Answer:

- PPDU (Physical Protocol Data Unit):
  The full PHY transmission unit that includes header and payload

- PLCP (Physical Layer Convergence Protocol):
  The layer that formats MAC data for physical transmission

- PMD (Physical Medium Dependent):
  The part that handles actual signal transmission, modulation, and encoding over the medium

---

### Question: What are the types and formats of PPDU across Wi-Fi generations?

Answer:

Types:
- Data frames
- Control frames
- Management frames

Formats:

- 802.11b:
  SYNC | SFD | SIGNAL | SERVICE | LENGTH | CRC | PSDU

- 802.11a/g:
  STF | LTF | RATE | LENGTH | PARITY | TAIL | PSDU

- 802.11n:
  HT SIGNAL | HT-STF | HT-LTF | SERVICE | LENGTH | TAIL | CRC | PSDU

- 802.11ac:
  L-STF | L-LTF | L-SIGNAL | VHT SIGNAL | VHT-STF | VHT-LTF | SERVICE | LENGTH | TAIL | CRC | PSDU

- 802.11ax:
  L-STF | L-LTF | L-SIGNAL | HE SIGNAL | HE-STF | HE-LTF | SERVICE | LENGTH | TAIL | CRC | PSDU

---

### Question: How is Wi-Fi data rate calculated?

Answer:
Wi-Fi data rate is based on several PHY parameters, including bandwidth, modulation, coding rate, and the number of spatial streams.

Where:
- N_SD: Number of data subcarriers
- N_BPSC: Bits per subcarrier
- R: Coding rate
- N_SS: Number of spatial streams
- T_DFT: OFDM symbol duration
- T_GI: Guard interval

In general, higher channel width, higher modulation order, more spatial streams, and shorter guard intervals produce greater throughput when the signal quality supports it.
