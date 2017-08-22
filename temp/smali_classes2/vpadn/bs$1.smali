.class Lvpadn/bs$1;
.super Landroid/content/BroadcastReceiver;
.source "VponWiFi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/bs;


# direct methods
.method constructor <init>(Lvpadn/bs;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lvpadn/bs$1;->a:Lvpadn/bs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 48
    const-string v0, "VponWiFi"

    const-string v1, "[wireless] Enter regional environment WiFi onReceive"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :try_start_0
    iget-object v0, p0, Lvpadn/bs$1;->a:Lvpadn/bs;

    invoke-static {v0}, Lvpadn/bs;->a(Lvpadn/bs;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 52
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 53
    const-string v0, "VponWiFi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[wireless] scan finish Wifi Count:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lvpadn/bs$1;->a:Lvpadn/bs;

    invoke-static {v0}, Lvpadn/bs;->b(Lvpadn/bs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 58
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const-string v5, "wifi_ssid"

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v5, "wifi_bssid"

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v5, "wifi_level"

    iget-object v0, p0, Lvpadn/bs$1;->a:Lvpadn/bs;

    .line 64
    invoke-static {v0}, Lvpadn/bs;->a(Lvpadn/bs;)Landroid/net/wifi/WifiManager;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    const/4 v6, 0x4

    invoke-static {v0, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v5, "wifi_raw_level"

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lvpadn/bs$1;->a:Lvpadn/bs;

    invoke-static {v0}, Lvpadn/bs;->b(Lvpadn/bs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lvpadn/bs$1;->a:Lvpadn/bs;

    invoke-static {v0}, Lvpadn/bs;->b(Lvpadn/bs;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lvpadn/bs$1$1;

    invoke-direct {v1, p0}, Lvpadn/bs$1$1;-><init>(Lvpadn/bs$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    iget-object v0, p0, Lvpadn/bs$1;->a:Lvpadn/bs;

    iget-object v1, p0, Lvpadn/bs$1;->a:Lvpadn/bs;

    invoke-static {v1}, Lvpadn/bs;->b(Lvpadn/bs;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bs;->a(Lvpadn/bs;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :goto_1
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v0, "VponWiFi"

    const-string v1, "[wireless] get environment wifi scan result Fail because don\'t have ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION Permission"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 86
    :catch_1
    move-exception v0

    .line 87
    const-string v1, "VponWiFi"

    const-string v2, "[wireless] regionalEnvWiFiReceiver throw Exception."

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
