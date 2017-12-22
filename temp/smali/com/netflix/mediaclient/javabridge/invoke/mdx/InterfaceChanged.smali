.class public Lcom/netflix/mediaclient/javabridge/invoke/mdx/InterfaceChanged;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "InterfaceChanged.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "InterfaceChanged"

.field private static final PROPERTY_CONNECTED:Ljava/lang/String; = "connected"

.field private static final PROPERTY_IPADDRESS:Ljava/lang/String; = "ipaddress"

.field private static final PROPERTY_NEW_INTERFACE:Ljava/lang/String; = "newInterface"

.field private static final PROPERTY_SSID:Ljava/lang/String; = "ssid"

.field private static final TAG:Ljava/lang/String; = "nf_invoke"

.field private static final TARGET:Ljava/lang/String; = "mdx"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "mdx"

    const-string/jumbo v1, "InterfaceChanged"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/InterfaceChanged;->setArguments(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "mdx"

    const-string/jumbo v1, "InterfaceChanged"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/InterfaceChanged;->setArguments(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private setArguments(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 67
    .line 70
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "newInterface"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v1, "connected"

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const/4 v1, 0x0

    .line 76
    const-string/jumbo v3, "WIFI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 78
    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    if-nez v0, :cond_0

    .line 91
    const-string/jumbo v0, ""

    .line 94
    :cond_0
    const-string/jumbo v1, "ssid"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 102
    const-string/jumbo v1, "ipaddress"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/InterfaceChanged;->arguments:Ljava/lang/String;

    .line 111
    :goto_2
    return-void

    .line 104
    :cond_1
    const-string/jumbo v0, "ipaddress"

    const-string/jumbo v1, ""

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private setArguments(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 118
    .line 121
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 122
    if-eqz p1, :cond_1

    .line 123
    const-string/jumbo v1, "newInterface"

    const-string/jumbo v2, "MOBILE"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :goto_0
    if-eqz p2, :cond_2

    .line 129
    const-string/jumbo v1, "connected"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    :goto_1
    if-nez p3, :cond_0

    .line 135
    const-string/jumbo p3, ""

    .line 138
    :cond_0
    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    if-eqz p4, :cond_3

    .line 145
    const-string/jumbo v1, "ipaddress"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/InterfaceChanged;->arguments:Ljava/lang/String;

    .line 154
    :goto_3
    return-void

    .line 125
    :cond_1
    const-string/jumbo v1, "newInterface"

    const-string/jumbo v2, "WIFI"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 131
    :cond_2
    :try_start_1
    const-string/jumbo v1, "connected"

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 147
    :cond_3
    const-string/jumbo v1, "ipaddress"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
