.class abstract Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;
.super Ljava/lang/Object;
.source "VastBaseInLineWrapperXmlManager.java"


# static fields
.field private static final COMPANION:Ljava/lang/String; = "Companion"

.field private static final COMPANION_ADS:Ljava/lang/String; = "CompanionAds"

.field private static final CREATIVE:Ljava/lang/String; = "Creative"

.field private static final CREATIVES:Ljava/lang/String; = "Creatives"

.field private static final ERROR:Ljava/lang/String; = "Error"

.field private static final EXTENSIONS:Ljava/lang/String; = "Extensions"

.field private static final IMPRESSION_TRACKER:Ljava/lang/String; = "Impression"

.field private static final LINEAR:Ljava/lang/String; = "Linear"


# instance fields
.field protected final mNode:Lorg/w3c/dom/Node;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    iput-object p1, p0, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->mNode:Lorg/w3c/dom/Node;

    .line 32
    return-void
.end method


# virtual methods
.method getCompanionAdXmlManagers()Ljava/util/List;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastCompanionAdXmlManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "companionAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    iget-object v7, p0, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->mNode:Lorg/w3c/dom/Node;

    const-string v8, "Creatives"

    invoke-static {v7, v8}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 118
    .local v6, "creativesNode":Lorg/w3c/dom/Node;
    if-nez v6, :cond_1

    .line 143
    :cond_0
    return-object v0

    .line 122
    :cond_1
    const-string v7, "Creative"

    invoke-static {v6, v7}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 123
    .local v5, "creativeNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-eqz v5, :cond_0

    .line 127
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    .line 128
    .local v4, "creativeNode":Lorg/w3c/dom/Node;
    const-string v8, "CompanionAds"

    invoke-static {v4, v8}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 129
    .local v1, "companionAds":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_2

    .line 133
    const-string v8, "Companion"

    invoke-static {v1, v8}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 134
    .local v2, "companionAdsNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-eqz v2, :cond_2

    .line 138
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 139
    .local v3, "companionNode":Lorg/w3c/dom/Node;
    new-instance v9, Lcom/mopub/mobileads/VastCompanionAdXmlManager;

    invoke-direct {v9, v3}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getErrorTrackers()Ljava/util/List;
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
    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v2, "errorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    iget-object v4, p0, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->mNode:Lorg/w3c/dom/Node;

    const-string v5, "Error"

    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 64
    .local v1, "errorNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-nez v1, :cond_1

    .line 74
    :cond_0
    return-object v2

    .line 68
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 69
    .local v0, "error":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "tracker":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 71
    new-instance v5, Lcom/mopub/mobileads/VastTracker;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getImpressionTrackers()Ljava/util/List;
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
    .line 42
    iget-object v4, p0, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->mNode:Lorg/w3c/dom/Node;

    const-string v5, "Impression"

    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 44
    .local v1, "impressionNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v2, "impressionTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
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

    .line 46
    .local v0, "impressionNode":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "uri":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 48
    new-instance v5, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v5, v3}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    .end local v0    # "impressionNode":Lorg/w3c/dom/Node;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method getLinearXmlManagers()Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastLinearXmlManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v4, "linearXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastLinearXmlManager;>;"
    iget-object v5, p0, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->mNode:Lorg/w3c/dom/Node;

    const-string v6, "Creatives"

    invoke-static {v5, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 86
    .local v2, "creativesNode":Lorg/w3c/dom/Node;
    if-nez v2, :cond_1

    .line 104
    :cond_0
    return-object v4

    .line 93
    :cond_1
    const-string v5, "Creative"

    invoke-static {v2, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 94
    .local v1, "creativeNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-eqz v1, :cond_0

    .line 98
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

    .line 99
    .local v0, "creativeNode":Lorg/w3c/dom/Node;
    const-string v6, "Linear"

    invoke-static {v0, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 100
    .local v3, "linearNode":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_2

    .line 101
    new-instance v6, Lcom/mopub/mobileads/VastLinearXmlManager;

    invoke-direct {v6, v3}, Lcom/mopub/mobileads/VastLinearXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getVastExtensionParentXmlManager()Lcom/mopub/mobileads/VastExtensionParentXmlManager;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->mNode:Lorg/w3c/dom/Node;

    const-string v2, "Extensions"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 155
    .local v0, "vastExtensionsNode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 159
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method
