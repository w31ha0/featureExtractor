.class Lcom/mopub/mobileads/VastCompanionAdXmlManager;
.super Ljava/lang/Object;
.source "VastCompanionAdXmlManager.java"


# static fields
.field private static final AD_SLOT_ID:Ljava/lang/String; = "adSlotID"

.field private static final COMPANION_CLICK_THROUGH:Ljava/lang/String; = "CompanionClickThrough"

.field private static final COMPANION_CLICK_TRACKING:Ljava/lang/String; = "CompanionClickTracking"

.field private static final CREATIVE_VIEW:Ljava/lang/String; = "creativeView"

.field private static final EVENT:Ljava/lang/String; = "event"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final TRACKING_EVENTS:Ljava/lang/String; = "TrackingEvents"

.field private static final VIDEO_TRACKER:Ljava/lang/String; = "Tracking"

.field private static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private final mCompanionNode:Lorg/w3c/dom/Node;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "companionNode"    # Lorg/w3c/dom/Node;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "companionNode cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    .line 42
    new-instance v0, Lcom/mopub/mobileads/VastResourceXmlManager;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastResourceXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 43
    return-void
.end method


# virtual methods
.method getAdSlotId()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v1, "adSlotID"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getClickThroughUrl()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v2, "CompanionClickThrough"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 93
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getClickTrackers()Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "companionAdClickTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    iget-object v4, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v5, "CompanionClickTracking"

    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 106
    .local v2, "trackerNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-nez v2, :cond_1

    .line 115
    :cond_0
    return-object v0

    .line 109
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 110
    .local v1, "trackerNode":Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "uri":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 112
    new-instance v5, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v5, v3}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getCompanionCreativeViewTrackers()Ljava/util/List;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "companionCreativeViewTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    iget-object v5, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v6, "TrackingEvents"

    invoke-static {v5, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 133
    .local v1, "node":Lorg/w3c/dom/Node;
    if-nez v1, :cond_1

    .line 149
    :cond_0
    return-object v0

    .line 137
    :cond_1
    const-string v5, "Tracking"

    const-string v6, "event"

    const-string v7, "creativeView"

    .line 141
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 137
    invoke-static {v1, v5, v6, v7}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 144
    .local v3, "trackerNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 145
    .local v2, "trackerNode":Lorg/w3c/dom/Node;
    invoke-static {v2}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "trackerUrl":Ljava/lang/String;
    new-instance v6, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v6, v4}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getHeight()Ljava/lang/Integer;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;

    return-object v0
.end method

.method getWidth()Ljava/lang/Integer;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method hasResources()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastResourceXmlManager;->getStaticResource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 154
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastResourceXmlManager;->getHTMLResource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 155
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastResourceXmlManager;->getIFrameResource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
