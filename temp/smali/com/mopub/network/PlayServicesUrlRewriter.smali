.class public Lcom/mopub/network/PlayServicesUrlRewriter;
.super Ljava/lang/Object;
.source "PlayServicesUrlRewriter.java"

# interfaces
.implements Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;


# static fields
.field public static final DO_NOT_TRACK_TEMPLATE:Ljava/lang/String; = "mp_tmpl_do_not_track"

.field private static final IFA_PREFIX:Ljava/lang/String; = "ifa:"

.field public static final UDID_TEMPLATE:Ljava/lang/String; = "mp_tmpl_advertising_id"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final deviceIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mopub/network/PlayServicesUrlRewriter;->deviceIdentifier:Ljava/lang/String;

    .line 24
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/PlayServicesUrlRewriter;->applicationContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public rewriteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v4, "mp_tmpl_advertising_id"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mp_tmpl_do_not_track"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 49
    .end local p1    # "url":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 33
    .restart local p1    # "url":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    .line 34
    .local v2, "prefix":Ljava/lang/String;
    new-instance v0, Lcom/mopub/common/GpsHelper$AdvertisingInfo;

    iget-object v4, p0, Lcom/mopub/network/PlayServicesUrlRewriter;->deviceIdentifier:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/mopub/common/GpsHelper$AdvertisingInfo;-><init>(Ljava/lang/String;Z)V

    .line 37
    .local v0, "advertisingInfo":Lcom/mopub/common/GpsHelper$AdvertisingInfo;
    iget-object v4, p0, Lcom/mopub/network/PlayServicesUrlRewriter;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/common/GpsHelper;->isPlayServicesAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    iget-object v4, p0, Lcom/mopub/network/PlayServicesUrlRewriter;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/common/GpsHelper;->fetchAdvertisingInfoSync(Landroid/content/Context;)Lcom/mopub/common/GpsHelper$AdvertisingInfo;

    move-result-object v1

    .line 40
    .local v1, "playServicesAdInfo":Lcom/mopub/common/GpsHelper$AdvertisingInfo;
    if-eqz v1, :cond_1

    .line 41
    const-string v2, "ifa:"

    .line 42
    move-object v0, v1

    .line 47
    .end local v1    # "playServicesAdInfo":Lcom/mopub/common/GpsHelper$AdvertisingInfo;
    :cond_1
    const-string v4, "mp_tmpl_advertising_id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/mopub/common/GpsHelper$AdvertisingInfo;->advertisingId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "toReturn":Ljava/lang/String;
    const-string v5, "mp_tmpl_do_not_track"

    iget-boolean v4, v0, Lcom/mopub/common/GpsHelper$AdvertisingInfo;->limitAdTracking:Z

    if-eqz v4, :cond_2

    const-string v4, "1"

    :goto_1
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object p1, v3

    .line 49
    goto :goto_0

    .line 48
    :cond_2
    const-string v4, "0"

    goto :goto_1
.end method
