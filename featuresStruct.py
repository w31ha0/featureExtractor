from constants import *

features = {}

def init():
    global features
    
    #
    for permission in MALICIOUS_PERMISSIONS:
        features[permission] = 0
    for intent in MALICIOUS_INTENTS:
        features[intent] = 0
    for hardware in MALICIOUS_HARDWARES:
        features[hardware] = 0
    for activity in MALICIOUS_ACTIVITIES:
        features[activity] = 0
    for service in MALICIOUS_SERVICES:
        features[service] = 0
    for receiver in MALICIOUS_RECEIVERS:
        features[receiver] = 0
    for provider in MALICIOUS_PROVIDERS:
        features[provider]      
    for api in SENSITIVE_APIS:
        features[api] = 0
        
    #counter
    features["PERMISSIONSCOUNT"] = 0
    features["INTENTSCOUNT"] = 0
    features["HARDWARECOUNT"] = 0
    features["SERVICESCOUNT"] = 0
        
    #obfuscation
    features["BANGCLE"] = 0
    features["DEXGUARD"] = 0
    features["HOSE2JAR"] = 0
    features["APKPROTECT"] = 0
    
    features["HARDCODED_ADDRESSES"] = 0
    features["DEXCLASSLOADER"] = 0
    features["LOADCLASS"] = 0
    features["REFLECTION"] = 0
    features["CRYPTO"] = 0
    features["INNERJARAPK"] = 0
    features["NATIVE"] = 0
    
    features["HIGHEST_CYCLOMATIC_COMPLEXITY"] = 0
    features["LOWEST_CYCLOMATIC_COMPLEXITY"] = 0
    
    