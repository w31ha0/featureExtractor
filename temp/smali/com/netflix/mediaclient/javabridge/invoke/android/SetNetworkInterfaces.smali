.class public Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetNetworkInterfaces.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setNetworkInterfaces"

.field private static final PROPERTY_interfaceName:Ljava/lang/String; = "interfaceName"

.field private static final PROPERTY_internetConnected:Ljava/lang/String; = "internetConnected"

.field private static final PROPERTY_ipv4Address:Ljava/lang/String; = "ipv4Address"

.field private static final PROPERTY_isDefault:Ljava/lang/String; = "isDefault"

.field private static final PROPERTY_linkConnected:Ljava/lang/String; = "linkConnected"

.field private static final PROPERTY_macAddress:Ljava/lang/String; = "macAddress"

.field private static final PROPERTY_mobileCarrier:Ljava/lang/String; = "mobileCarrier"

.field private static final PROPERTY_mobileCountryCode:Ljava/lang/String; = "mobileCountryCode"

.field private static final PROPERTY_mobileNetworkCode:Ljava/lang/String; = "mobileNetworkCode"

.field private static final PROPERTY_networkInterfaces:Ljava/lang/String; = "networkInterfaces"

.field private static final PROPERTY_physicalLayerSubType:Ljava/lang/String; = "physicalLayerSubType"

.field private static final PROPERTY_physicalLayerType:Ljava/lang/String; = "physicalLayerType"

.field private static final PROPERTY_ssid:Ljava/lang/String; = "ssid"

.field private static final PROPERTY_wirelessChannel:Ljava/lang/String; = "wirelessChannel"

.field private static final TARGET:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 99
    const-string/jumbo v0, "android"

    const-string/jumbo v1, "setNetworkInterfaces"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;->setArguments(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method private setArguments(Landroid/content/Context;)V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 108
    .line 110
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 112
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkInterfaces(Landroid/content/Context;)[Landroid/net/NetworkInfo;

    move-result-object v8

    .line 113
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 114
    if-nez v8, :cond_0

    .line 228
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_0
    array-length v10, v8

    move v2, v3

    :goto_1
    if-ge v2, v10, :cond_a

    aget-object v0, v8, v2

    .line 119
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 120
    const-string/jumbo v1, "interfaceName"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkTypePerLoggingSpecifcation(Landroid/content/Context;I)I

    move-result v4

    .line 123
    const-string/jumbo v1, "physicalLayerType"

    invoke-virtual {v11, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    invoke-static {v0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v1

    .line 126
    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkSubTypePerLoggingSpecification(Lcom/netflix/mediaclient/service/net/LogMobileType;)I

    move-result v1

    .line 127
    const-string/jumbo v5, "physicalLayerSubType"

    invoke-virtual {v11, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    if-eqz v9, :cond_d

    .line 134
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v1, v5, :cond_d

    .line 136
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v6

    move v1, v6

    .line 140
    :goto_2
    if-eqz v1, :cond_6

    .line 141
    const-string/jumbo v5, "isDefault"

    invoke-virtual {v11, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 142
    if-eqz v0, :cond_5

    .line 143
    const-string/jumbo v0, "linkConnected"

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    :goto_3
    const-string/jumbo v0, "internetConnected"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    const/4 v1, 0x0

    .line 159
    if-ne v13, v4, :cond_7

    .line 160
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 161
    if-eqz v0, :cond_b

    .line 162
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 163
    if-eqz v5, :cond_b

    .line 168
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    .line 172
    if-eqz v1, :cond_1

    .line 173
    const-string/jumbo v12, "ssid"

    invoke-virtual {v11, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    :cond_1
    if-eqz v5, :cond_2

    .line 177
    const-string/jumbo v1, "macAddress"

    invoke-virtual {v11, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    :cond_2
    const-string/jumbo v1, "wirelessChannel"

    const/4 v5, 0x0

    invoke-virtual {v11, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    :goto_4
    if-eqz v0, :cond_3

    .line 189
    const-string/jumbo v1, "ipv4Address"

    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    :cond_3
    invoke-static {v4}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->carrierInfoNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    const-string/jumbo v5, ""

    .line 194
    const-string/jumbo v4, ""

    .line 195
    const-string/jumbo v1, ""

    .line 196
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 197
    if-eqz v0, :cond_9

    .line 198
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v13, :cond_8

    .line 204
    const/4 v1, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 205
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v5

    .line 214
    :goto_5
    const-string/jumbo v5, "mobileCarrier"

    invoke-virtual {v11, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string/jumbo v4, "mobileCountryCode"

    invoke-virtual {v11, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string/jumbo v1, "mobileNetworkCode"

    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    :cond_4
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 118
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 145
    :cond_5
    const-string/jumbo v0, "linkConnected"

    const/4 v1, 0x2

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 225
    :catch_0
    move-exception v0

    .line 226
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 148
    :cond_6
    :try_start_1
    const-string/jumbo v0, "isDefault"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v0, "linkConnected"

    const/4 v1, 0x2

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 185
    :cond_7
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 211
    :cond_8
    const-string/jumbo v0, "nf_invoke"

    const-string/jumbo v12, "Network operator less than 4 characters!"

    invoke-static {v0, v12}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object v0, v1

    move-object v1, v4

    move-object v4, v5

    goto :goto_5

    .line 221
    :cond_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 222
    const-string/jumbo v1, "networkInterfaces"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;->arguments:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto/16 :goto_4

    :cond_c
    move v0, v3

    move v1, v6

    goto/16 :goto_2

    :cond_d
    move v0, v3

    move v1, v3

    goto/16 :goto_2
.end method
