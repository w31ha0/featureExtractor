.class public Lcom/mopub/mobileads/VastExtensionXmlManager;
.super Ljava/lang/Object;
.source "VastExtensionXmlManager.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VIDEO_VIEWABILITY_TRACKER:Ljava/lang/String; = "MoPubViewabilityTracker"


# instance fields
.field private final mExtensionNode:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "extensionNode"    # Lorg/w3c/dom/Node;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    iput-object p1, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    .line 28
    return-void
.end method


# virtual methods
.method getType()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 38
    iget-object v6, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    const-string v7, "MoPubViewabilityTracker"

    .line 39
    invoke-static {v6, v7}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 40
    .local v1, "videoViewabilityTrackerNode":Lorg/w3c/dom/Node;
    if-nez v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v5

    .line 44
    :cond_1
    new-instance v3, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;

    invoke-direct {v3, v1}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    .line 46
    .local v3, "videoViewabilityTrackerXmlManager":Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;
    invoke-virtual {v3}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->getViewablePlaytimeMS()Ljava/lang/Integer;

    move-result-object v4

    .line 47
    .local v4, "viewablePlaytime":Ljava/lang/Integer;
    invoke-virtual {v3}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->getPercentViewable()Ljava/lang/Integer;

    move-result-object v0

    .line 49
    .local v0, "percentViewable":Ljava/lang/Integer;
    invoke-virtual {v3}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->getVideoViewabilityTrackerUrl()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "videoViewabilityTrackerUrl":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 56
    new-instance v5, Lcom/mopub/mobileads/VideoViewabilityTracker;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v5, v6, v7, v2}, Lcom/mopub/mobileads/VideoViewabilityTracker;-><init>(IILjava/lang/String;)V

    goto :goto_0
.end method
