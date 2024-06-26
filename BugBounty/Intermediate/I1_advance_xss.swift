//
//  I1_advance_xss.swift
//  BugBounty
//
//  Created by Akshay Bhasme on 03/06/24.
//

import SwiftUI

struct I1_advance_xss: View {
    
    
    let wq1 = """
      Advanced Cross-Site Scripting (XSS) Techniques: Investigating advanced XSS techniques, such as DOM-based XSS and XSS bypasses in modern web applications.
      """
    let wq2 = """
      Advanced Cross-Site Scripting (XSS) techniques involve exploiting XSS vulnerabilities in more sophisticated ways to bypass security controls and achieve various goals. Here are some advanced XSS techniques:
      """
    let wq3 = """
      DOM-based XSS occurs when the client-side JavaScript manipulates the Document Object Model (DOM) to introduce malicious code. It often bypasses traditional server-side security controls since the payload is executed within the client\'s browser.
      """
    let wq4 = """
      Polyglot XSS payloads are crafted to be interpreted as valid code in multiple contexts, such as HTML, JavaScript, and CSS. This technique helps to evade input sanitization or output encoding that may be applied in different contexts.
      """
    let wq5 = """
      This technique involves uploading malicious files (such as images or documents) that contain embedded XSS payloads. If the application does not properly handle user-supplied files, the stored XSS payload can be executed when the file is accessed or displayed.
      """
    let wq6 = """
      In Blind XSS attacks, the payload is submitted to the vulnerable application, but the attacker does not immediately see the results of the exploitation. The attacker relies on a separate mechanism, such as server-side logs or user interactions, to retrieve and verify the execution of the injected script.
      """
    let wq7 = """
      Some web browsers employ XSS filters to mitigate XSS attacks. Advanced XSS techniques involve crafting payloads that bypass these filters by obfuscating the code, using encoding techniques, or breaking up the payload into smaller pieces that are reconstructed dynamically.
      """
    let wq8 = """
      This technique leverages vulnerabilities like insecure cross-domain resource sharing (CORS) to hijack JavaScript resources from trusted domains. By manipulating the loaded JavaScript, attackers can introduce malicious code into the victim\'s context.
      """
    let wq9 = """
      While XSS vulnerabilities are commonly associated with HTML content, it is possible to exploit XSS in non-HTML contexts like XML, JSON, or JavaScript. Attackers inject malicious code into these contexts, targeting specific parsers or application logic that may execute the payload.
      """
    let wq10 = """
      RIAs, such as Single-Page Applications (SPAs), often rely on dynamic content generation and manipulation. Advanced XSS techniques involve targeting client-side frameworks, like AngularJS or React, to exploit vulnerabilities in their data binding and rendering mechanisms.
      """
    let wq12 = """
      Self-XSS involves tricking users into executing malicious code within their own browser by disguising it as a harmless script or enticing them to copy and paste code into the browser\'s developer console. This technique relies on social engineering and user manipulation rather than exploiting vulnerabilities in the target application.
      """
    let wq13 = """
      JavaScript Gadgets, also known as XSS gadgets or XSS payloads, are code snippets or combinations of JavaScript features that are crafted to exploit specific vulnerabilities or bypass security controls. They are designed to achieve various goals, such as stealing user credentials, bypassing CSRF protection, or escalating privileges.
      """
    let wq14 = """
      BeEF is an open-source framework designed to test the security of web browsers. It enables the attacker to control vulnerable browsers, execute malicious scripts, and perform a range of attacks, including XSS exploitation, phishing, and client-side attacks.
      """
    let wq15 = """
      Polyglot files are crafted to be valid in multiple file formats, such as HTML, JavaScript, and image formats. These files can be used to exploit XSS vulnerabilities when the target application accepts multiple file types but does not properly validate or sanitize them, allowing the malicious code to be executed.
      """
    let wq16 = """
      1XSS filters implemented in web application firewalls (WAFs) or browsers may be circumvented using various techniques. This includes breaking up the payload into smaller fragments, using different character encodings, using alternative methods for executing JavaScript code, or employing obfuscation and evasion techniques.
      """
    let wq17 = """
      Instead of injecting the XSS payload directly into the vulnerable application, this technique involves injecting the payload into input fields that are used by other users or administrators. When the victim interacts with these input fields, the payload gets executed, leading to successful exploitation.
      """
    let wq18 = """
      CSTI occurs when an attacker injects malicious code into client-side templates used by frameworks like AngularJS or Handlebars. Exploiting CSTI vulnerabilities allows for the execution of arbitrary JavaScript code within the context of the application.
      """
    let wq19 = """
      Websockets enable bidirectional communication between a client and a server. By injecting malicious code into the websocket communications, an attacker can deliver an XSS payload to clients connected to the websocket.
      """
    let wq20 = """
      Some applications may implement custom protocols or URL schemes that can be vulnerable to XSS attacks. By injecting malicious code into these custom protocols, an attacker can execute arbitrary scripts when the user interacts with specially crafted URLs.
      """
    let wq21 = """
      WebSocket hijacking involves intercepting or manipulating WebSocket communications between a client and server. An attacker can inject malicious scripts into the WebSocket traffic, allowing for XSS attacks against clients connected to the WebSocket.
      """
    let wq22 = """
      Polyglot injection refers to injecting a payload that is interpreted as valid code in multiple contexts, such as HTML, JavaScript, and SQL. This technique can help bypass input sanitization or output encoding in various contexts, increasing the chances of successful exploitation.
      """
    let wq23 = """
      Deserialization vulnerabilities can be exploited to execute XSS attacks. By injecting malicious data into serialized objects or taking advantage of insecure deserialization processes, an attacker can trigger the execution of arbitrary scripts when the data is processed by the application.
      """
    let wq24 = """
      If a user has a vulnerable browser extension installed, an attacker can craft malicious scripts that exploit the extension\'s vulnerabilities to execute XSS attacks. This technique requires finding and exploiting weaknesses in the extension\'s code or communication channels.
      """
    let wq25 = """
      PostMessage is a browser API that allows cross-origin communication between different windows or frames. If the target application does not properly validate or sanitize incoming PostMessage data, an attacker can inject malicious scripts and achieve XSS.
      """
    let wq26 = """
      Clickjacking involves tricking a user into clicking on a concealed or disguised element that triggers an unintended action, including XSS. By overlaying the target website with an invisible or disguised iframe, an attacker can capture the user\'s clicks and execute malicious scripts in the context of the target site.
      """
    let wq27 = """
      If an application includes external resources, such as JavaScript or HTML templates, without proper validation or sanitization, an attacker can exploit remote file inclusion vulnerabilities to inject XSS payloads from a remote server.
      """
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    I1_advance_xss()
}
