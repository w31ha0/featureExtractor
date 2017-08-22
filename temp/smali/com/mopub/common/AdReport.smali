.class public Lcom/mopub/common/AdReport;
.super Ljava/lang/Object;
.source "AdReport.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DATE_FORMAT_PATTERN:Ljava/lang/String; = "M/d/yy hh:mm:ss a z"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAdResponse:Lcom/mopub/network/AdResponse;

.field private final mAdUnitId:Ljava/lang/String;

.field private final mDeviceLocale:Ljava/util/Locale;

.field private final mDeviceModel:Ljava/lang/String;

.field private final mSdkVersion:Ljava/lang/String;

.field private final mUdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/ClientMetadata;Lcom/mopub/network/AdResponse;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clientMetadata"    # Lcom/mopub/common/ClientMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adResponse"    # Lcom/mopub/network/AdResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mopub/common/AdReport;->mAdUnitId:Ljava/lang/String;

    .line 29
    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/AdReport;->mSdkVersion:Ljava/lang/String;

    .line 30
    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/AdReport;->mDeviceModel:Ljava/lang/String;

    .line 31
    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata;->getDeviceLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/AdReport;->mDeviceLocale:Ljava/util/Locale;

    .line 32
    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/AdReport;->mUdid:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/mopub/common/AdReport;->mAdResponse:Lcom/mopub/network/AdResponse;

    .line 34
    return-void
.end method

.method private appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameters"    # Ljava/lang/StringBuilder;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v0, " : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    return-void
.end method

.method private getFormattedTimeStamp(J)Ljava/lang/String;
    .locals 5
    .param p1, "timeStamp"    # J

    .prologue
    .line 78
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/d/yy hh:mm:ss a z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 80
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDspCreativeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mopub/common/AdReport;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getDspCreativeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mopub/common/AdReport;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getStringBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v1, "parameters":Ljava/lang/StringBuilder;
    const-string v3, "sdk_version"

    iget-object v4, p0, Lcom/mopub/common/AdReport;->mSdkVersion:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/mopub/common/AdReport;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v3, "creative_id"

    iget-object v4, p0, Lcom/mopub/common/AdReport;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v4}, Lcom/mopub/network/AdResponse;->getDspCreativeId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/mopub/common/AdReport;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v3, "platform_version"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/mopub/common/AdReport;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, "device_model"

    iget-object v4, p0, Lcom/mopub/common/AdReport;->mDeviceModel:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/mopub/common/AdReport;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v3, "ad_unit_id"

    iget-object v4, p0, Lcom/mopub/common/AdReport;->mAdUnitId:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/mopub/common/AdReport;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v4, "device_locale"

    iget-object v3, p0, Lcom/mopub/common/AdReport;->mDeviceLocale:Ljava/util/Locale;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, v1, v4, v3}, Lcom/mopub/common/AdReport;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v3, "device_id"

    iget-object v4, p0, Lcom/mopub/common/AdReport;->mUdid:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/mopub/common/AdReport;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v3, "network_type"

    iget-object v4, p0, Lcom/mopub/common/AdReport;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v4}, Lcom/mopub/network/AdResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/mopub/common/AdReport;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v3, "platform"

    const-string v4, "android"

    invoke-direct {p0, v1, v3, v4}, Lcom/mopub/common/AdReport;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v3, "timestamp"

    iget-object v4, p0, Lcom/mopub/common/AdReport;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v4}, Lcom/mopub/network/AdResponse;->getTimestamp()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/mopub/common/AdReport;->getFormattedTimeStamp(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/mopub/common/AdReport;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v3, "ad_type"

    iget-object v4, p0, Lcom/mopub/common/AdReport;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v4}, Lcom/mopub/network/AdResponse;->getAdType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/mopub/common/AdReport;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lcom/mopub/common/AdReport;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v3}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v2

    .line 52
    .local v2, "width":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/mopub/common/AdReport;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v3}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    .line 53
    .local v0, "height":Ljava/lang/Integer;
    const-string v3, "ad_size"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_0

    const-string v2, "0"

    .end local v2    # "width":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_1

    const-string v0, "0"

    .end local v0    # "height":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/mopub/common/AdReport;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 44
    :cond_2
    iget-object v3, p0, Lcom/mopub/common/AdReport;->mDeviceLocale:Ljava/util/Locale;

    .line 45
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
