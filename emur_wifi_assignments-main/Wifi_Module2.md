# Module 2 – Advanced Wi-Fi Architecture

### Question: Briefly explain Split MAC architecture and how it improves AP performance.

Answer:
Split MAC architecture divides the MAC-layer work between the access point and the wireless LAN controller. The purpose is to keep time-sensitive tasks close to the radio while moving heavier management tasks to the controller.

- The AP handles tasks such as:
  - Beacon transmission
  - Frame acknowledgments
  - Basic encryption and decryption operations

- The WLC handles tasks such as:
  - User authentication
  - Roaming decisions
  - QoS enforcement
  - Policy and access control

Why it improves performance:
- It reduces the load on the AP hardware
- It makes the network easier to manage centrally
- It supports larger deployments more effectively
- It helps keep policies consistent across APs
- It improves overall operational efficiency

---

### Question: What is CAPWAP and explain the communication flow between AP and WLC.

Answer:
CAPWAP stands for Control And Provisioning of Wireless Access Points. It is the protocol used by lightweight access points to communicate with a controller and receive configuration, control, and provisioning data.

Flow between AP and Controller:

1. AP initialization:
   - The AP powers up and runs basic checks
   - It discovers a controller using DHCP, DNS, or manual configuration

2. Discovery:
   - The AP sends discovery requests
   - Available WLCs reply with controller information

3. Join process:
   - The AP chooses the best controller
   - It sends a join request
   - The WLC authenticates and accepts the AP

4. Image and configuration download:
   - The WLC can upgrade the AP image if needed
   - It pushes SSID, VLAN, and security settings

5. Tunnel creation:
   - A control tunnel is used for management traffic
   - A data tunnel is used for user traffic when required

6. Operational state:
   - The AP begins serving clients
   - Traffic flows based on the controller’s policy

---

### Question: Where does CAPWAP fit in the OSI model and what are its tunnels?

Answer:
CAPWAP works across both Layer 2 and Layer 3 of the OSI model. That is why it can operate locally while also carrying IP-based control traffic across routed networks.

- Layer 2:
  Handles frame-level communication between the AP and the controller

- Layer 3:
  Supports communication over IP networks

CAPWAP tunnels:

- Control Tunnel:
  Carries configuration, authentication, and keep-alive information

- Data Tunnel:
  Carries user data traffic between the AP and WLC

---

### Question: Differentiate between Autonomous APs, Lightweight APs, and Cloud-based APs.

Answer:

- Autonomous APs:
  - Work independently without a central controller
  - Must be configured one by one
  - Suitable for small networks
  - Handle all wireless functions locally

- Lightweight APs:
  - Depend on a WLC for centralized management
  - Use Split MAC architecture
  - Are common in enterprise deployments
  - Offload many decisions to the controller

- Cloud-based APs:
  - Are managed through a cloud platform
  - Do not require an on-site controller
  - Are ideal for distributed or branch networks
  - Simplify remote monitoring and updates

---

### Question: How is the CAPWAP tunnel maintained between AP and WLC?

Answer:
The CAPWAP tunnel is formed during the AP join process and kept active through periodic communication.

- The AP and WLC exchange heartbeat messages
- Status updates are sent regularly
- If the tunnel drops, the AP tries to reconnect
- Secure encapsulation protects the communication path

This keeps the AP synchronized with the controller throughout operation.

---

### Question: What is the difference between Sniffer mode and Monitor mode?

Answer:

- Sniffer Mode:
  - Captures packets on a chosen channel for analysis
  - Does not take part in the network itself
  - Is used mainly for packet-level troubleshooting
  - Wireshark is a common analysis tool for this mode

- Monitor Mode:
  - Observes the wireless environment and RF behavior
  - Captures management and control frames
  - Helps with interference analysis and network planning
  - Is passive, but focused on radio conditions

---

### Question: If WLC is deployed over WAN, which AP mode is suitable and why?

Answer:
FlexConnect is the best choice when the controller is reached through a WAN connection.

- The AP can process client data locally
- The controller is still used for centralized management
- The site can keep working even if the WAN link becomes unstable
- It is especially useful for branch and remote offices

---

### Question: What are the challenges of deploying more than 50 autonomous APs in a large network?

Answer:
Large numbers of autonomous APs are hard to manage because they do not share centralized control.

- Scaling becomes difficult
- Configuration must be repeated on each AP
- Policies may not remain consistent
- Troubleshooting takes longer
- Roaming behavior may be less smooth

---

### Question: What happens to clients if WLC goes down in Local Mode?

Answer:
When the WLC fails in Local Mode, the wireless network becomes limited until the controller returns.

- Existing clients may stay connected for a short time
- New clients cannot join
- Roaming and reauthentication stop working properly
- Configuration changes cannot be pushed
- The AP tries to reconnect to the WLC

This leaves the AP operating with reduced capability until controller service is restored.
