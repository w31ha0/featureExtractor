.class public Lcom/mopub/mobileads/VastExtensionParentXmlManager;
.super Ljava/lang/Object;
.source "VastExtensionParentXmlManager.java"


# static fields
.field private static final EXTENSION:Ljava/lang/String; = "Extension"


# instance fields
.field private final mVastExtensionParentNode:Lorg/w3c/dom/Node;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "vastExtensionParentNode"    # Lorg/w3c/dom/Node;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    iput-object p1, p0, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->mVastExtensionParentNode:Lorg/w3c/dom/Node;

    .line 25
    return-void
.end method


# virtual methods
.method getVastExtensionXmlManagers()Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastExtensionXmlManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v2, "vastExtensionXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastExtensionXmlManager;>;"
    iget-object v3, p0, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->mVastExtensionParentNode:Lorg/w3c/dom/Node;

    const-string v4, "Extension"

    .line 39
    invoke-static {v3, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 40
    .local v1, "vastExtensionNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-nez v1, :cond_1

    .line 48
    :cond_0
    return-object v2

    .line 44
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 45
    .local v0, "vastExtensionNode":Lorg/w3c/dom/Node;
    new-instance v4, Lcom/mopub/mobileads/VastExtensionXmlManager;

    invoke-direct {v4, v0}, Lcom/mopub/mobileads/VastExtensionXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
