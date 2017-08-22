.class public Lcom/mopub/mobileads/VastIconXmlManager;
.super Ljava/lang/Object;
.source "VastIconXmlManager.java"


# static fields
.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final ICON_CLICKS:Ljava/lang/String; = "IconClicks"

.field public static final ICON_CLICK_THROUGH:Ljava/lang/String; = "IconClickThrough"

.field public static final ICON_CLICK_TRACKING:Ljava/lang/String; = "IconClickTracking"

.field public static final ICON_VIEW_TRACKING:Ljava/lang/String; = "IconViewTracking"

.field public static final OFFSET:Ljava/lang/String; = "offset"

.field public static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private final mIconNode:Lorg/w3c/dom/Node;
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
    .param p1, "iconNode"    # Lorg/w3c/dom/Node;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    .line 39
    new-instance v0, Lcom/mopub/mobileads/VastResourceXmlManager;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastResourceXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 40
    return-void
.end method


# virtual methods
.method getClickThroughUri()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    iget-object v2, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    const-string v3, "IconClicks"

    invoke-static {v2, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 131
    .local v1, "iconClicksNode":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    .line 132
    const/4 v2, 0x0

    .line 137
    :goto_0
    return-object v2

    .line 135
    :cond_0
    const-string v2, "IconClickThrough"

    .line 136
    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 137
    .local v0, "iconClickThroughNode":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method getClickTrackingUris()Ljava/util/List;
    .locals 7
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
    .line 111
    iget-object v5, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    const-string v6, "IconClicks"

    invoke-static {v5, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 112
    .local v3, "iconClicksNode":Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v2, "iconClickTrackingUris":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    if-nez v3, :cond_1

    .line 125
    :cond_0
    return-object v2

    .line 117
    :cond_1
    const-string v5, "IconClickTracking"

    .line 118
    invoke-static {v3, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "iconClickTrackingNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 120
    .local v0, "iconClickTrackingNode":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "uri":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 122
    new-instance v6, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v6, v4}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getDurationMS()Ljava/lang/Integer;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    iget-object v3, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    const-string v4, "duration"

    invoke-static {v3, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "iconDurationStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 97
    .local v1, "iconDuration":Ljava/lang/Integer;
    :try_start_0
    invoke-static {v2}, Lcom/mopub/common/util/Strings;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Invalid VAST icon duration format: %s:"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getHeight()Ljava/lang/Integer;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getOffsetMS()Ljava/lang/Integer;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 74
    iget-object v3, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    const-string v4, "offset"

    invoke-static {v3, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "iconOffsetStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 77
    .local v1, "iconOffset":Ljava/lang/Integer;
    :try_start_0
    invoke-static {v2}, Lcom/mopub/common/util/Strings;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Invalid VAST icon offset format: %s:"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mResourceXmlManager:Lcom/mopub/mobileads/VastResourceXmlManager;

    return-object v0
.end method

.method getViewTrackingUris()Ljava/util/List;
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
    .line 142
    iget-object v4, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    const-string v5, "IconViewTracking"

    .line 143
    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 144
    .local v1, "iconViewTrackingNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v2, "iconViewTrackingUris":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 147
    .local v0, "iconViewTrackingNode":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "uri":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 149
    new-instance v5, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v5, v3}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v0    # "iconViewTrackingNode":Lorg/w3c/dom/Node;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method getWidth()Ljava/lang/Integer;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->mIconNode:Lorg/w3c/dom/Node;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
