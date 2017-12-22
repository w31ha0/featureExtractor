.class public final Lcom/netflix/mediaclient/util/ConnectivityUtils;
.super Ljava/lang/Object;
.source "ConnectivityUtils.java"


# static fields
.field public static final INTERFACE_TYPE_MOBILE:Ljava/lang/String; = "MOBILE"

.field public static final INTERFACE_TYPE_WIFI:Ljava/lang/String; = "WIFI"

.field public static final NETWORK_TYPE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final NETWORK_TYPE_CDMA:Ljava/lang/String; = "cdma"

.field public static final NETWORK_TYPE_GSM:Ljava/lang/String; = "gsm"

.field public static final NETWORK_TYPE_MOBILE:Ljava/lang/String; = "mobile"

.field public static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final NETWORK_TYPE_WIMAX:Ljava/lang/String; = "wimax"

.field public static final NETWORK_TYPE_WIRED:Ljava/lang/String; = "wired"

.field public static final NRD_NTWK_CDMA:I = 0x2

.field public static final NRD_NTWK_CONN_STATE_CONNECTED:I = 0x1

.field public static final NRD_NTWK_CONN_STATE_DISCONNECTED:I = 0x2

.field public static final NRD_NTWK_CONN_STATE_UNKNOWN:I = 0x0

.field public static final NRD_NTWK_GSM:I = 0x1

.field public static final NRD_NTWK_MOBILE:I = 0x0

.field public static final NRD_NTWK_SUBTYPE_1000MBPS_ETH:I = 0xa

.field public static final NRD_NTWK_SUBTYPE_100MBPS_ETH:I = 0x9

.field public static final NRD_NTWK_SUBTYPE_10MBPS_ETH:I = 0x8

.field public static final NRD_NTWK_SUBTYPE_2G:I = 0x1

.field public static final NRD_NTWK_SUBTYPE_3G:I = 0x2

.field public static final NRD_NTWK_SUBTYPE_4G:I = 0x3

.field public static final NRD_NTWK_SUBTYPE_802_11A:I = 0x4

.field public static final NRD_NTWK_SUBTYPE_802_11B:I = 0x5

.field public static final NRD_NTWK_SUBTYPE_802_11G:I = 0x6

.field public static final NRD_NTWK_SUBTYPE_802_11N:I = 0x7

.field public static final NRD_NTWK_SUBTYPE_UNKNOWN:I = 0x0

.field public static final NRD_NTWK_WIFI:I = 0x4

.field public static final NRD_NTWK_WIMAX:I = 0x3

.field public static final NRD_NTWK_WIRED:I = 0x5

.field private static final PARAM_NET_TYPE:Ljava/lang/String; = "nettype"

.field private static final TAG:Ljava/lang/String; = "nf_net"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static carrierInfoNeeded(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 371
    const/4 v1, 0x4

    if-ne v1, p0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 373
    :cond_1
    const/4 v1, 0x3

    if-eq v1, p0, :cond_0

    .line 375
    const/4 v1, 0x5

    if-eq v1, p0, :cond_0

    .line 378
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static carrierInfoNeeded(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 473
    const-string/jumbo v1, "wifi"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    :cond_0
    :goto_0
    return v0

    .line 475
    :cond_1
    const-string/jumbo v1, "wimax"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    const-string/jumbo v1, "wired"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fillNetworkType(Lorg/json/JSONObject;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 904
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->mobile:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    const-string/jumbo v0, "nettype"

    const-string/jumbo v1, "mobile"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 918
    :goto_0
    return-object p0

    .line 906
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wifi:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    const-string/jumbo v0, "nettype"

    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 915
    :catch_0
    move-exception v0

    .line 916
    const-string/jumbo v1, "nf_net"

    const-string/jumbo v2, "error adding nettype to json"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 908
    :cond_1
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wired:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 909
    const-string/jumbo v0, "nettype"

    const-string/jumbo v1, "wired"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 912
    :cond_2
    const-string/jumbo v0, "nettype"

    const-string/jumbo v1, "mobile"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    if-nez p0, :cond_0

    move-object v0, v1

    .line 308
    :goto_0
    return-object v0

    .line 304
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 305
    if-nez v0, :cond_1

    move-object v0, v1

    .line 306
    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getActiveNetworkTypeOrMinusOne(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 892
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 893
    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 895
    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 899
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getApplicationRx()J
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 202
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    .line 203
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 204
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Application receiving statistic is not supported by this device"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-wide/16 v0, 0x0

    .line 207
    :cond_0
    return-wide v0
.end method

.method public static getApplicationTx()J
    .locals 4

    .prologue
    .line 160
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 161
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    .line 162
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 163
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Transmit statistic is not supported by this device!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-wide/16 v0, 0x0

    .line 167
    :cond_0
    return-wide v0
.end method

.method public static getCarrierInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 927
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 928
    if-eqz v0, :cond_2

    .line 929
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 930
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 933
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 963
    :goto_0
    return-object v0

    .line 936
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 937
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    .line 939
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 940
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 941
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 942
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 947
    :try_start_0
    const-string/jumbo v8, "simindex"

    const-string/jumbo v9, "1"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 948
    const-string/jumbo v8, "name"

    invoke-virtual {v6, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 949
    const-string/jumbo v2, "mcc_mnc"

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 950
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 952
    const-string/jumbo v2, "name"

    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 953
    const-string/jumbo v1, "mcc_mnc"

    invoke-virtual {v7, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 955
    const-string/jumbo v1, "siminfo"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 956
    const-string/jumbo v1, "currentoperator"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 957
    :catch_0
    move-exception v1

    .line 958
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 963
    goto :goto_0
.end method

.method public static getConnectionType(Landroid/content/Context;)Lcom/netflix/mediaclient/service/net/LogMobileType;
    .locals 2

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Activity cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 123
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 125
    if-nez v0, :cond_1

    .line 126
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->UKNOWN:Lcom/netflix/mediaclient/service/net/LogMobileType;

    .line 129
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;
    .locals 1

    .prologue
    .line 844
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 845
    if-nez v0, :cond_0

    .line 846
    const/4 v0, 0x0

    .line 860
    :goto_0
    return-object v0

    .line 850
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 858
    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->mobile:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    goto :goto_0

    .line 852
    :sswitch_0
    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wired:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    goto :goto_0

    .line 855
    :sswitch_1
    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wifi:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    goto :goto_0

    .line 850
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getCurrentOperatorNameOrEmptyString(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    if-eqz p0, :cond_0

    .line 877
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_0

    .line 882
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getLocalIP4Address(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 672
    if-nez p0, :cond_0

    move-object v0, v1

    .line 686
    :goto_0
    return-object v0

    .line 675
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 677
    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 681
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WIFI"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 682
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Local active network interface is WiFi"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 685
    :cond_2
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Local active network interface is Mobile (it also covers everything else)."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 613
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .line 619
    if-nez v3, :cond_1

    move-object v0, v1

    .line 661
    :cond_0
    :goto_0
    return-object v0

    .line 623
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 625
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 626
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 627
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "NI is loopback, skip"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 658
    :catch_0
    move-exception v0

    .line 659
    const-string/jumbo v2, "nf_net"

    const-string/jumbo v3, "Failed to get IP address"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v0, v1

    .line 661
    goto :goto_0

    .line 630
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isVirtual()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 631
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "NI is virtual, skip"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 634
    :cond_4
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-nez v4, :cond_5

    .line 635
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "NI is not up, skip"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 639
    :cond_5
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 641
    const-string/jumbo v5, "nf_net"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_6

    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_6

    .line 647
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 648
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 649
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "WiFi interface found in all network interfaces, skip!"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 585
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 586
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 587
    :cond_0
    const/4 v0, 0x0

    .line 595
    :goto_0
    return-object v0

    .line 590
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 595
    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNetworkInterfaces(Landroid/content/Context;)[Landroid/net/NetworkInfo;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 243
    if-nez p0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-object v3

    .line 247
    :cond_1
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 248
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 253
    if-eqz v4, :cond_0

    move v0, v1

    move v2, v1

    .line 259
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 260
    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    aget-object v5, v4, v0

    invoke-static {v5}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNRDPSupportedInterface(Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 261
    add-int/lit8 v2, v2, 0x1

    .line 259
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    :cond_3
    if-lez v2, :cond_6

    .line 266
    new-array v3, v2, [Landroid/net/NetworkInfo;

    move v0, v1

    .line 267
    :goto_2
    array-length v2, v4

    if-ge v0, v2, :cond_5

    .line 268
    aget-object v2, v4, v0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNRDPSupportedInterface(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 269
    add-int/lit8 v2, v1, 0x1

    aget-object v5, v4, v0

    aput-object v5, v3, v1

    move v1, v2

    .line 267
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v3

    :goto_3
    move-object v3, v0

    .line 273
    goto :goto_0

    :cond_6
    move-object v0, v3

    goto :goto_3
.end method

.method public static getNetworkSpec(Lcom/netflix/mediaclient/service/net/LogMobileType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    if-nez p0, :cond_0

    .line 560
    const-string/jumbo v0, ""

    .line 573
    :goto_0
    return-object v0

    .line 563
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->_2G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    const-string/jumbo v0, "2g"

    goto :goto_0

    .line 565
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->_3G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    const-string/jumbo v0, "3g"

    goto :goto_0

    .line 567
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->_4G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 568
    const-string/jumbo v0, "4g"

    goto :goto_0

    .line 569
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 570
    const-string/jumbo v0, "g"

    goto :goto_0

    .line 573
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getNetworkState(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 699
    if-nez p0, :cond_0

    .line 700
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v2, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    .line 726
    :goto_0
    return-object v0

    .line 702
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 703
    if-nez v0, :cond_1

    .line 704
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v2, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 707
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_3

    .line 708
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v2, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "WIFI"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 712
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Local active network interface is WiFi"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 714
    if-nez v0, :cond_4

    .line 715
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "WiFi manager is not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v2, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 719
    if-nez v1, :cond_5

    .line 720
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v4, v4, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 722
    :cond_5
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v4, v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 725
    :cond_6
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Local active network interface is Mobile (it also covers everything else)."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v0, v4, v2, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getNetworkSubTypePerLoggingSpecification(Lcom/netflix/mediaclient/service/net/LogMobileType;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 349
    if-nez p0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 353
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->_2G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    const/4 v0, 0x1

    goto :goto_0

    .line 355
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->_3G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    const/4 v0, 0x2

    goto :goto_0

    .line 357
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->_4G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 358
    const/4 v0, 0x3

    goto :goto_0

    .line 359
    :cond_4
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    if-nez p0, :cond_0

    .line 217
    const-string/jumbo v0, ""

    .line 232
    :goto_0
    return-object v0

    .line 220
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 221
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 222
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    .line 227
    if-nez v0, :cond_3

    .line 228
    const-string/jumbo v0, ""

    goto :goto_0

    .line 229
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    const-string/jumbo v0, "WIFI"

    goto :goto_0

    .line 232
    :cond_4
    const-string/jumbo v0, "MOBILE"

    goto :goto_0
.end method

.method public static getNetworkTypePerLoggingSpecifcation(Landroid/content/Context;I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 316
    if-nez p0, :cond_0

    move v0, v1

    .line 341
    :goto_0
    return v0

    .line 320
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 329
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 330
    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    move v0, v1

    .line 341
    goto :goto_0

    .line 322
    :sswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 324
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 326
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 334
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 336
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetworkTypePerLoggingSpecification(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 389
    if-nez p0, :cond_0

    .line 390
    const-string/jumbo v0, ""

    .line 426
    :goto_0
    return-object v0

    .line 393
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 394
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 395
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 399
    if-nez v0, :cond_3

    .line 400
    const-string/jumbo v0, ""

    goto :goto_0

    .line 402
    :cond_3
    const-string/jumbo v1, "nf_net"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkInfo type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 415
    :pswitch_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 416
    if-eqz v0, :cond_4

    .line 417
    const-string/jumbo v1, "nf_net"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tm type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 426
    :cond_4
    const-string/jumbo v0, "mobile"

    goto :goto_0

    .line 406
    :pswitch_1
    const-string/jumbo v0, "wired"

    goto :goto_0

    .line 408
    :pswitch_2
    const-string/jumbo v0, "wimax"

    goto :goto_0

    .line 410
    :pswitch_3
    const-string/jumbo v0, "wifi"

    goto/16 :goto_0

    .line 412
    :pswitch_4
    const-string/jumbo v0, "bluetooth"

    goto/16 :goto_0

    .line 420
    :pswitch_5
    const-string/jumbo v0, "cdma"

    goto/16 :goto_0

    .line 422
    :pswitch_6
    const-string/jumbo v0, "gsm"

    goto/16 :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 418
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static getRx()J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 179
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 180
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    .line 181
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 182
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Receiving statistic is not supported by this device! Report this!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    .line 184
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 185
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Receiving statistic is not supported at all by this device! Report this!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-wide/16 v0, 0x0

    .line 190
    :cond_0
    return-wide v0
.end method

.method public static getSsidOrEmptyString(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    if-eqz p0, :cond_1

    .line 865
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 866
    if-eqz v0, :cond_1

    .line 867
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 868
    if-eqz v0, :cond_0

    .line 871
    :goto_0
    return-object v0

    .line 868
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 871
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getTx()J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 139
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 140
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    .line 141
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 142
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Transmit statistic is not supported by this device! Failing back to all data!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    .line 144
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 145
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v1, "Transmit statistic is not supported at all by this device! Report this!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-wide/16 v0, 0x0

    .line 150
    :cond_0
    return-wide v0
.end method

.method public static hasCellular(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 444
    if-nez p0, :cond_0

    move v0, v1

    .line 461
    :goto_0
    return v0

    .line 448
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 449
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 450
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 451
    if-nez v0, :cond_1

    move v0, v1

    .line 452
    goto :goto_0

    .line 455
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 456
    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 457
    const/4 v0, 0x1

    goto :goto_0

    .line 459
    :cond_2
    const-string/jumbo v2, "nf_net"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tm simState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v1

    .line 461
    goto :goto_0
.end method

.method public static hasInternet(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 105
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 494
    if-nez p0, :cond_0

    move v0, v1

    .line 507
    :goto_0
    return v0

    .line 499
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 500
    if-nez v0, :cond_1

    move v0, v1

    .line 501
    goto :goto_0

    .line 503
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 504
    if-nez v0, :cond_2

    move v0, v1

    .line 505
    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public static isConnectedOrConnecting(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 517
    if-nez p0, :cond_0

    move v0, v1

    .line 530
    :goto_0
    return v0

    .line 522
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 523
    if-nez v0, :cond_1

    move v0, v1

    .line 524
    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 527
    if-nez v0, :cond_2

    move v0, v1

    .line 528
    goto :goto_0

    .line 530
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    goto :goto_0
.end method

.method public static isNRDPSupportedInterface(Landroid/net/NetworkInfo;)Z
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 291
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 289
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkTypeCellular(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 434
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkTypePerLoggingSpecification(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 435
    const-string/jumbo v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "cdma"

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "gsm"

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    :cond_0
    const/4 v0, 0x1

    .line 440
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWiFiConnected(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 541
    if-nez p0, :cond_0

    .line 543
    const/4 v0, 0x0

    .line 547
    :goto_0
    return v0

    .line 546
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getConnectionType(Landroid/content/Context;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    .line 547
    sget-object v1, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static processConnectivityChange(Landroid/content/Context;Landroid/content/Intent;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 738
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "Handle connectivity change, process..."

    invoke-static {v0, v4, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 744
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 746
    if-eqz v0, :cond_6

    .line 747
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    move-object v4, v0

    .line 750
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v5, "Connect intent"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-static {v4}, Lcom/netflix/mediaclient/service/net/LogMobileType;->toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    .line 753
    const-string/jumbo v5, "nf_net"

    const-string/jumbo v6, "Network changed, find limit"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v0

    move v6, v2

    .line 763
    :goto_1
    if-eqz v4, :cond_3

    .line 765
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WIFI"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 768
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 769
    if-eqz v0, :cond_5

    .line 770
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 771
    if-eqz v0, :cond_5

    .line 776
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 777
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v4, v0

    move-object v0, v1

    move v1, v3

    .line 793
    :goto_3
    if-nez v0, :cond_0

    .line 794
    const-string/jumbo v0, ""

    .line 801
    :cond_0
    new-instance v7, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    invoke-direct {v7, v6, v1, v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    .line 802
    iput-object v5, v7, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;->currentConnectionType:Lcom/netflix/mediaclient/service/net/LogMobileType;

    .line 803
    iput-object v4, v7, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;->ipAddr:Ljava/lang/String;

    .line 804
    return-object v7

    .line 757
    :cond_1
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v5, "Disconnect intent"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v1

    move v6, v3

    goto :goto_1

    .line 782
    :cond_2
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "Not wifi"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    goto :goto_3

    .line 788
    :cond_3
    const-string/jumbo v0, "nf_net"

    const-string/jumbo v4, "Intent does not have network info. It should NOT happen!"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v3

    .line 801
    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v4, v1

    goto/16 :goto_0
.end method
