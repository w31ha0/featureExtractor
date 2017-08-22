.class public Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;
.super Ljava/lang/Object;
.source "VideoViewabilityTrackerXmlManager.java"


# static fields
.field public static final PERCENT_VIEWABLE:Ljava/lang/String; = "percentViewable"

.field public static final VIEWABLE_PLAYTIME:Ljava/lang/String; = "viewablePlaytime"


# instance fields
.field private final mVideoViewabilityNode:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "videoViewabilityNode"    # Lorg/w3c/dom/Node;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->mVideoViewabilityNode:Lorg/w3c/dom/Node;

    .line 27
    return-void
.end method


# virtual methods
.method getPercentViewable()Ljava/lang/Integer;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v4, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->mVideoViewabilityNode:Lorg/w3c/dom/Node;

    const-string v5, "percentViewable"

    .line 82
    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "percentViewableStr":Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v1, v3

    .line 99
    :cond_0
    :goto_0
    return-object v1

    .line 87
    :cond_1
    const/4 v1, 0x0

    .line 89
    .local v1, "percentViewable":Ljava/lang/Integer;
    :try_start_0
    const-string v4, "%"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_0

    :cond_2
    move-object v1, v3

    .line 96
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Invalid VAST percentViewable format for \"d{1,3}%%\": %s:"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method getVideoViewabilityTrackerUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->mVideoViewabilityNode:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getViewablePlaytimeMS()Ljava/lang/Integer;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 40
    iget-object v4, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->mVideoViewabilityNode:Lorg/w3c/dom/Node;

    const-string v5, "viewablePlaytime"

    .line 41
    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "viewablePlaytimeStr":Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v1, v3

    .line 67
    :cond_0
    :goto_0
    return-object v1

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    .local v1, "viewablePlaytimeMS":Ljava/lang/Integer;
    invoke-static {v2}, Lcom/mopub/common/util/Strings;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 49
    :try_start_0
    invoke-static {v2}, Lcom/mopub/common/util/Strings;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_0

    :cond_2
    move-object v1, v3

    .line 64
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Invalid VAST viewablePlaytime format for \"HH:MM:SS[.mmm]\": %s:"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 56
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    .line 57
    :catch_1
    move-exception v0

    .line 58
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v4, "Invalid VAST viewablePlaytime format for \"SS[.mmm]\": %s:"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
