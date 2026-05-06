# Module 3 – Wi-Fi PHY Layer Concepts

### Question: What are the different 802.11 PHY layer standards? Compare their characteristics.

Answer:
IEEE 802.11 defines multiple PHY layer standards, each differing in frequency, speed, and technology.

- 802.11a:
  - Band: 5 GHz  
  - Speed: Up to 54 Mbps  
  - Technology: OFDM  
  - Characteristics: Higher speed with lower interference but shorter range  

- 802.11b:
  - Band: 2.4 GHz  
  - Speed: Up to 11 Mbps  
  - Technology: DSSS  
  - Characteristics: Longer range but more prone to interference  

- 802.11g:
  - Band: 2.4 GHz  
  - Speed: Up to 54 Mbps  
  - Technology: OFDM  
  - Characteristics: Combines range of 11b with speed of 11a  

- 802.11n (Wi-Fi 4):
  - Band: 2.4 GHz & 5 GHz  
  - Speed: 72 Mbps – 600 Mbps  
  - Technology: MIMO, channel bonding (40 MHz)  
  - Characteristics: Improved throughput and coverage  

- 802.11ac (Wi-Fi 5):
  - Band: 5 GHz  
  - Speed: Up to ~3.4 Gbps  
  - Technology: MU-MIMO, wider channels (80/160 MHz)  
  - Characteristics: High throughput and efficiency  

- 802.11ax (Wi-Fi 6 / 6E):
  - Band: 2.4 GHz, 5 GHz, 6 GHz  
  - Speed: Up to ~9.6 Gbps  
  - Technology: OFDMA, MU-MIMO, BSS Coloring  
  - Characteristics: Optimized for dense environments and better efficiency  

---

### Question: What are DSSS and FHSS? How do they function?

Answer:

- DSSS (Direct Sequence Spread Spectrum):
  - Expands the signal across a wider frequency using a spreading code  
  - Improves resistance to interference and noise  
  - Commonly used in 802.11b  

- FHSS (Frequency Hopping Spread Spectrum):
  - Continuously switches frequencies in a pseudo-random sequence  
  - Reduces interference probability  
  - Ensures more secure and reliable transmission  

---

### Question: How do modulation schemes work in the PHY layer? Compare their usage.

Answer:
Modulation determines how binary data is represented on a carrier signal by altering its phase, amplitude, or both.

Common schemes:

- BPSK:
  - 1 bit per symbol  
  - Very robust but low data rate  

- QPSK:
  - 2 bits per symbol  
  - Balanced performance  

- 16-QAM:
  - 4 bits per symbol  
  - Higher speed with moderate reliability  

- 64-QAM:
  - 6 bits per symbol  
  - High speed but requires good signal quality  

Usage:
- Older standards (802.11a/b/g): BPSK, QPSK, 16-QAM, 64-QAM  
- Modern standards (802.11n/ac/ax): Higher-order QAM (up to 256-QAM and beyond) for higher throughput  

---

### Question: What is OFDM and why is it important in WLAN?

Answer:
OFDM (Orthogonal Frequency Division Multiplexing) splits a channel into multiple orthogonal subcarriers, each transmitting part of the data simultaneously.

Advantages:
- Handles multipath interference effectively  
- Increases data rates  
- Improves spectral efficiency  
- Enables reliable communication in complex environments  

---

### Question: How are Wi-Fi frequency bands structured?

Answer:

- 2.4 GHz Band:
  - Used by 802.11b/g/n  
  - Limited channels (typically 20 MHz width)  
  - Higher interference from other devices  

- 5 GHz Band:
  - Used by 802.11a/n/ac/ax  
  - More channels with less congestion  
  - Supports wider bandwidths (20–160 MHz)  

- 6 GHz Band (Wi-Fi 6E):
  - New spectrum for high-performance networks  
  - Minimal interference  
  - Ideal for dense environments  

---

### Question: What is the role of Guard Intervals in WLAN?

Answer:
Guard Intervals (GI) are short time gaps inserted between symbols in OFDM transmission to prevent overlap caused by multipath reflections.

- Standard GI: ~800 ns  
- Short GI (SGI): ~400 ns  

Impact:
- SGI improves data rate and efficiency  
- However, it may increase errors in environments with high interference  

---

### Question: Describe the structure of an 802.11 PHY frame.

Answer:
A typical PHY frame consists of three main parts:

- Preamble:
  - Synchronizes sender and receiver  
  - Includes Sync bits and Start Frame Delimiter (SFD)  

- Header:
  - Contains transmission details  
  - Fields: Signal, Service, Length, CRC  

- Payload (PSDU):
  - Actual data being transmitted  

---

### Question: What is the difference between OFDM and OFDMA?

Answer:

- OFDM:
  - Divides channel into multiple subcarriers  
  - Used by a single user at a time  

- OFDMA:
  - Allows multiple users to share subcarriers simultaneously  
  - Improves efficiency in crowded networks  
  - Used in Wi-Fi 6  

---

### Question: What is the difference between MIMO and MU-MIMO?

Answer:

- MIMO:
  - Multiple antennas used for a single device  
  - Improves throughput and signal reliability  

- MU-MIMO:
  - Multiple devices served simultaneously  
  - Enhances overall network capacity  

---

### Question: What are PPDU, PLCP, and PMD?

Answer:

- PPDU (Physical Protocol Data Unit):
  - Complete PHY frame including header and payload  

- PLCP (Physical Layer Convergence Protocol):
  - Converts MAC data into a PHY-compatible format  
  - Adds headers for transmission  

- PMD (Physical Medium Dependent):
  - Handles actual signal transmission over the medium  
  - Defines modulation and encoding  

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
Data rate depends on multiple PHY parameters such as bandwidth, modulation, coding rate, and spatial streams.

:contentReference[oaicite:0]{index=0}

Where:
- \(N_{SD}\): Number of data subcarriers  
- \(N_{BPSC}\): Bits per subcarrier  
- \(R\): Coding rate  
- \(N_{SS}\): Number of spatial streams  
- \(T_{DFT}\): OFDM symbol duration  
- \(T_{GI}\): Guard interval  

Higher values of bandwidth, modulation order, and spatial streams result in higher throughput.
