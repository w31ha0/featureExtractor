.class Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;
.super Ljava/lang/Object;
.source "MoPubCustomEventVideoNative.java"


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventVideoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoResponseHeaders"
.end annotation


# instance fields
.field private mHeadersAreValid:Z

.field private mImpressionMinVisiblePercent:I

.field private mImpressionVisibleMs:I

.field private mMaxBufferMs:I

.field private mPauseVisiblePercent:I

.field private mPlayVisiblePercent:I

.field private mVideoTrackers:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 4
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 911
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    :try_start_0
    const-string v2, "Play-Visible-Percent"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPlayVisiblePercent:I

    .line 914
    const-string v2, "Pause-Visible-Percent"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPauseVisiblePercent:I

    .line 915
    const-string v2, "Impression-Min-Visible-Percent"

    .line 916
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionMinVisiblePercent:I

    .line 917
    const-string v2, "Impression-Visible-Ms"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisibleMs:I

    .line 918
    const-string v2, "Max-Buffer-Ms"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mMaxBufferMs:I

    .line 919
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :goto_0
    const-string v2, "Video-Trackers"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 925
    .local v1, "videoTrackers":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 935
    :goto_1
    return-void

    .line 920
    .end local v1    # "videoTrackers":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 921
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z

    goto :goto_0

    .line 930
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "videoTrackers":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mVideoTrackers:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 931
    :catch_1
    move-exception v0

    .line 932
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse video trackers to JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 933
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mVideoTrackers:Lorg/json/JSONObject;

    goto :goto_1
.end method


# virtual methods
.method getImpressionMinVisiblePercent()I
    .locals 1

    .prologue
    .line 950
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionMinVisiblePercent:I

    return v0
.end method

.method getImpressionVisibleMs()I
    .locals 1

    .prologue
    .line 954
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisibleMs:I

    return v0
.end method

.method getMaxBufferMs()I
    .locals 1

    .prologue
    .line 958
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mMaxBufferMs:I

    return v0
.end method

.method getPauseVisiblePercent()I
    .locals 1

    .prologue
    .line 946
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPauseVisiblePercent:I

    return v0
.end method

.method getPlayVisiblePercent()I
    .locals 1

    .prologue
    .line 942
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPlayVisiblePercent:I

    return v0
.end method

.method getVideoTrackers()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mVideoTrackers:Lorg/json/JSONObject;

    return-object v0
.end method

.method hasValidHeaders()Z
    .locals 1

    .prologue
    .line 938
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z

    return v0
.end method
