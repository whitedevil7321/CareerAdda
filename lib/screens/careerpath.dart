import 'package:flutter/material.dart';

class carrerPath extends StatefulWidget {
  const carrerPath({super.key});

  @override
  State<carrerPath> createState() => _carrerPathState();
}

class _carrerPathState extends State<carrerPath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Handle the home button action here
          },
        ),
        title: Text('Career Path'),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              // Handle the Messages button action here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'images/baclk.png'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      VisionContainer(),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      VisionContainer2(),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      VisionContainer3(),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      VisionContainer4(),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      VisionContainer5(),
                    ],
                  ),
                ],
              ))),
    );
  }
}

class VisionContainer extends StatefulWidget {
  @override
  _VisionContainerState createState() => _VisionContainerState();
}

class _VisionContainerState extends State<VisionContainer> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(221, 197, 113, 152),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Engineering ',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.8,
            ),
            child: Text(
              isExpanded
                  ? "Engineering is the application of scientific and mathematical principles to design, develop, and build systems, structures, devices, and processes that solve practical problems or meet specific needs. It encompasses various disciplines, including civil engineering, mechanical engineering, electrical engineering, and more, each specializing in specific areas.\n\nSkills required for engineering include:\n\n1. **Analytical Skills:** Engineers need to analyze complex problems, break them down into smaller components, and develop solutions.\n\n2. **Mathematical Skills:** A strong foundation in mathematics is essential for engineering, as it involves a lot of calculations and modeling.\n\n3. **Creativity:** Engineers often need to think creatively to innovate and come up with new solutions or designs.\n\n4. **Attention to Detail:** Precision is crucial in engineering to ensure that designs and systems work as intended.\n\n5. **Problem-Solving:** Engineers are problem solvers by nature, tackling real-world challenges and finding practical solutions.\n\n6. **Communication Skills:** Engineers must communicate effectively with team members, clients, and stakeholders to convey ideas and collaborate on projects.\n\n7. **Technical Knowledge:** Proficiency in relevant software, tools, and technologies is essential for engineers.\n\n8. **Adaptability:** The engineering field is constantly evolving, so engineers need to adapt to new technologies and methodologies.\n\n9. **Teamwork:** Many engineering projects require collaboration with other professionals, so teamwork is important.\n\n10. **Ethical and Safety Awareness:** Engineers must adhere to ethical standards and prioritize safety in their designs and projects.\n\nEngineering is a diverse and dynamic field that offers a wide range of career opportunities, and the specific skills required may vary depending on the engineering discipline and specialization. Have a Look At Video :https://www.youtube.com/watch?v=btGYcizV0iI"
                  : "Engineering is the application of scientific and mathematical principles to design, develop, and build systems, structures, devices, and processes that solve practical problems or meet specific needs. It encompasses various disciplines, including civil engineering, mechanical engineering, electrical engineering, and more, each specializing in specific areas.",
              style: TextStyle(
                fontSize: 18.0,
              ),
              maxLines: isExpanded ? null : 2,
              overflow: isExpanded ? null : TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 8.0),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? 'Read Less' : 'Read More',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VisionContainer2 extends StatefulWidget {
  @override
  _VisionContainer2State createState() => _VisionContainer2State();
}

class _VisionContainer2State extends State<VisionContainer2> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 38, 223, 223),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Becoming a Doctor',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.8,
            ),
            child: Text(
              isExpanded
                  ? "A doctor is a medical professional who diagnoses, treats, and provides care to patients with various medical conditions. They play a crucial role in maintaining and improving people's health.\n\nSkills required to become a doctor include:\n\n- Medical Knowledge: A deep understanding of human anatomy, physiology, and diseases.\n- Problem-Solving: The ability to diagnose complex medical conditions and develop treatment plans.\n- Communication: Effective communication with patients and healthcare teams.\n- Empathy: Compassion and understanding towards patients' physical and emotional needs.\n- Attention to Detail: Precision in medical procedures and record-keeping.\n- Adaptability: The capacity to stay current with evolving medical practices and technologies.\n- Time Management: Efficiently managing patient appointments and medical responsibilities.\n- Ethics: Upholding high ethical standards and patient confidentiality.\n\nBecoming a doctor typically requires completing medical school, followed by residency training in a specialized field of medicine, and obtaining the necessary certifications and licenses. It is a demanding and rewarding profession dedicated to patient care and well-being."
                  : "A doctor is a medical professional who diagnoses, treats, and provides care to patients with various medical conditions...",
              style: TextStyle(
                fontSize: 18.0,
              ),
              maxLines: isExpanded ? null : 2,
              overflow: isExpanded ? null : TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 8.0),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? 'Read Less' : 'Read More',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VisionContainer3 extends StatefulWidget {
  @override
  _VisionContainer3State createState() => _VisionContainer3State();
}

class _VisionContainer3State extends State<VisionContainer3> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 243, 169, 246),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Becoming a Lawyer',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.8,
            ),
            child: Text(
              isExpanded
                  ? "A lawyer is a professional who provides legal advice, represents clients in legal matters, and advocates for their rights and interests within the legal system. Lawyers may specialize in various areas of law, such as criminal, civil, corporate, family, or environmental law, among others.\n\nSkills required to be a successful lawyer include:\n\n- Legal Knowledge: A deep understanding of the law and its intricacies in their chosen area of practice.\n- Analytical Skills: The ability to analyze complex legal issues, research cases, and develop effective legal strategies.\n- Communication Skills: Strong written and oral communication skills to present arguments persuasively in court, draft legal documents, and communicate with clients.\n- Research Skills: Proficiency in legal research to find relevant statutes, regulations, and case precedents.\n- Problem-Solving: Creative problem-solving to resolve legal issues and conflicts.\n- Ethics and Integrity: High ethical standards and integrity in dealing with clients and cases.\n- Time Management: Effective time management and organization skills to handle multiple cases and deadlines.\n- Negotiation Skills: The ability to negotiate settlements and agreements on behalf of clients.\n- Advocacy: Strong advocacy skills to represent clients in court and present their case convincingly.\n- Interpersonal Skills: Building strong client relationships and working collaboratively with colleagues and opposing parties.\n- Adaptability: The legal landscape can change, so lawyers need to adapt to evolving laws and regulations.\n- Attention to Detail: Precision in reviewing legal documents and contracts to avoid errors or omissions."
                  : "A lawyer is a professional who provides legal advice, represents clients in legal matters...",
              style: TextStyle(
                fontSize: 18.0,
              ),
              maxLines: isExpanded ? null : 2,
              overflow: isExpanded ? null : TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 8.0),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? 'Read Less' : 'Read More',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VisionContainer4 extends StatefulWidget {
  @override
  _VisionContainer4State createState() => _VisionContainer4State();
}

class _VisionContainer4State extends State<VisionContainer4> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 97, 238, 217),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'DEFENCE and Required Skills',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            child: Text(
              isExpanded
                  ? "In a broad sense, 'DEFENCE' typically refers to military or security-related activities aimed at protecting a country or organization from threats, attacks, or harm. This can include various aspects such as national defense, cybersecurity, and more.\n\nSkills required in defense-related roles can vary widely depending on the specific job or field. Some common skills and qualities include:\n\n1. Physical Fitness: Many defense roles require a high level of physical fitness and stamina.\n2. Critical Thinking: Analytical and problem-solving skills are essential for assessing situations and making strategic decisions.\n3. Teamwork: The ability to work effectively in a team and communicate clearly is crucial, especially in military and security settings.\n4. Discipline: Defense roles often require strict adherence to rules, protocols, and regulations.\n5. Leadership: For higher-ranking positions, leadership skills are essential for guiding and managing teams.\n6. Adaptability: The capacity to adapt to changing circumstances and make quick decisions is important in dynamic and potentially dangerous situations.\n7. Technical Skills: Some defense roles may require technical skills, such as operating specialized equipment or using advanced technology.\n8. Mental Resilience: The ability to handle stress, cope with adversity, and maintain focus under pressure is vital.\n9. Ethical Conduct: Adherence to ethical standards and values is critical in defense roles, as these positions often involve significant responsibilities and access to sensitive information.\n\nIt's important to note that the specific skills and qualifications can vary significantly depending on the branch of defense (e.g., military, cybersecurity, law enforcement) and the particular role within that branch. Additionally, educational requirements and training may also vary."
                  : "In a broad sense, 'DEFENCE' typically refers to military or security-related activities aimed at protecting a country or organization from threats, attacks, or harm...",
              style: TextStyle(
                fontSize: 18.0,
              ),
              maxLines: isExpanded ? null : 2,
              overflow: isExpanded ? null : TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 8.0),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? 'Read Less' : 'Read More',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VisionContainer5 extends StatefulWidget {
  @override
  _VisionContainer5State createState() => _VisionContainer5State();
}

class _VisionContainer5State extends State<VisionContainer5> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 173, 173),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Banking and Required Skills',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            child: Text(
              isExpanded
                  ? "Banking is a financial industry that involves various activities related to the handling of money, financial transactions, and financial services. In short, banking involves accepting deposits from customers, providing loans and credit, facilitating payments, and offering various financial products and services.\n\nSkills required to work in banking can vary depending on the specific job role, but some essential skills include:\n\n1. **Financial Literacy:** A strong understanding of financial concepts, including banking products, interest rates, investments, and risk management.\n2. **Customer Service:** Good interpersonal and communication skills to assist customers with their financial needs and resolve issues.\n3. **Analytical Skills:** The ability to analyze financial data, assess risks, and make informed decisions.\n4. **Attention to Detail:** Precision is crucial in banking to prevent errors in transactions and financial records.\n5. **Mathematical Aptitude:** Proficiency in math is essential for performing calculations, assessing interest, and managing finances accurately.\n6. **Ethical Integrity:** High ethical standards and integrity to ensure the security and trustworthiness of banking operations.\n7. **Technology Proficiency:** Familiarity with banking software and digital tools as the industry becomes increasingly technology-driven.\n8. **Sales and Marketing:** For roles involving selling financial products, effective sales and marketing skills are valuable.\n9. **Regulatory Knowledge:** Awareness of banking regulations and compliance requirements to ensure adherence to legal standards.\n10. **Problem-Solving:** The ability to identify and resolve issues related to accounts, transactions, and customer inquiries.\n11. **Teamwork:** Collaboration with colleagues to achieve common goals and deliver excellent service.\n\nKeep in mind that different positions within banking may require specialized skills and qualifications. Additionally, continuous learning and adaptability are crucial in this dynamic industry."
                  : "Banking is a financial industry that involves various activities related to the handling of money, financial transactions, and financial services...",
              style: TextStyle(
                fontSize: 18.0,
              ),
              maxLines: isExpanded ? null : 2,
              overflow: isExpanded ? null : TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 8.0),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? 'Read Less' : 'Read More',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
