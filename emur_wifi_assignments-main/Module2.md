# Module 2 – Advanced Wi-Fi Architecture

### Question: Briefly explain Split MAC architecture and how it improves AP performance.

Answer:
Split MAC architecture divides MAC layer responsibilities between the Access Point (AP) and the Wireless LAN Controller (WLC).

- The AP manages delay-sensitive operations such as:
  - Beacon transmission  
  - Frame acknowledgments  
  - Encryption and decryption  

- The WLC is responsible for advanced functions like:
  - User authentication  
  - Roaming decisions  
  - QoS enforcement  
  - Access control policies  

Improvement in performance:
- Reduces complexity of AP hardware  
- Enables centralized network management  
- Enhances scalability and uniform policy enforcement  
- Improves overall network security and efficiency  

---

### Question: What is CAPWAP and explain the communication flow between AP and WLC.

Answer:
CAPWAP (Control And Provisioning of Wireless Access Points) is a protocol used for communication between lightweight APs and a Wireless LAN Controller.

Flow between AP and Controller:

1. AP Initialization:
   - AP powers on and performs self-check  
   - Discovers WLC using DHCP, DNS, or manual configuration  

2. Discovery:
   - AP sends discovery request  
   - WLC responds with available controller details  

3. Join Process:
   - AP selects the optimal WLC  
   - Sends join request  
   - WLC authenticates and accepts  

4. Image & Configuration:
   - WLC upgrades AP firmware if required  
   - Pushes configurations like SSID, VLAN, security  

5. Tunnel Creation:
   - Control Tunnel for management traffic  
   - Data Tunnel for user traffic  

6. Operational State:
   - AP starts broadcasting SSID  
   - Clients connect and traffic flows via WLC  

---

### Question: Where does CAPWAP fit in the OSI model and what are its tunnels?

Answer:
CAPWAP operates across Layer 2 and Layer 3 of the OSI model.

- Layer 2:
  Handles frame-level communication between AP and WLC  

- Layer 3:
  Enables IP-based communication across networks  

CAPWAP Tunnels:

- Control Tunnel:
  Used for configuration, authentication, and keep-alive messages  

- Data Tunnel:
  Used for transmitting user data traffic between AP and WLC  

---

### Question: Differentiate between Autonomous APs, Lightweight APs, and Cloud-based APs.

Answer:

- Autonomous APs:
  - Operate independently without a controller  
  - Configured manually on each device  
  - Suitable for small-scale networks  
  - Handles all functions locally  

- Lightweight APs:
  - Managed centrally using a WLC  
  - Uses Split MAC architecture  
  - Suitable for enterprise environments  
  - Depends on WLC for operations  

- Cloud-based APs:
  - Managed via cloud platforms  
  - No on-premise controller required  
  - Ideal for distributed networks  
  - Easy remote configuration and monitoring  

---

### Question: How is the CAPWAP tunnel maintained between AP and WLC?

Answer:
- Tunnels are established during AP join phase  
- Periodic heartbeat messages ensure connectivity  
- AP sends status updates to WLC regularly  
- In case of failure, AP attempts reconnection  
- Secure encapsulation ensures safe transmission  

This ensures continuous synchronization between AP and controller.

---

### Question: What is the difference between Sniffer mode and Monitor mode?

Answer:

- Sniffer Mode:
  - Captures all packets on a channel  
  - Fully passive, no network participation  
  - Used for packet-level analysis  
  - Tools: Wireshark  

- Monitor Mode:
  - Observes RF environment and network health  
  - Captures relevant management and control frames  
  - Used for interference detection and planning  
  - Passive but environment-aware  

---

### Question: If WLC is deployed over WAN, which AP mode is suitable and why?

Answer:
FlexConnect mode is the best choice when WLC is located over WAN.

- Allows AP to handle client data locally  
- Maintains control communication with WLC  
- Continues operation even if WAN fails  
- Ideal for branch or remote offices  

---

### Question: What are the challenges of deploying more than 50 autonomous APs in a large network?

Answer:
- Difficult to scale and manage individually  
- No centralized control system  
- Policy enforcement becomes inconsistent  
- Troubleshooting is complex and time-consuming  
- Poor roaming experience for users  

---

### Question: What happens to clients if WLC goes down in Local Mode?

Answer:
- Existing clients remain connected temporarily  
- No new clients can join the network  
- Roaming and reauthentication stop functioning  
- No configuration updates can be applied  
- AP tries to reconnect to WLC or switch modes if configured  

This leads to limited functionality until the controller is restored.
