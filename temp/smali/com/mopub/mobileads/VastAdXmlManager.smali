.class Lcom/mopub/mobileads/VastAdXmlManager;
.super Ljava/lang/Object;
.source "VastAdXmlManager.java"


# static fields
.field private static final INLINE:Ljava/lang/String; = "InLine"

.field private static final SEQUENCE:Ljava/lang/String; = "sequence"

.field private static final WRAPPER:Ljava/lang/String; = "Wrapper"


# instance fields
.field private final mAdNode:Lorg/w3c/dom/Node;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "adNode"    # Lorg/w3c/dom/Node;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    iput-object p1, p0, Lcom/mopub/mobileads/VastAdXmlManager;->mAdNode:Lorg/w3c/dom/Node;

    .line 32
    return-void
.end method


# virtual methods
.method getInLineXmlManager()Lcom/mopub/mobileads/VastInLineXmlManager;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 41
    iget-object v2, p0, Lcom/mopub/mobileads/VastAdXmlManager;->mAdNode:Lorg/w3c/dom/Node;

    const-string v3, "InLine"

    invoke-static {v2, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 42
    .local v0, "inLineNode":Lorg/w3c/dom/Node;
    const/4 v1, 0x0

    .line 43
    .local v1, "vastInLineXmlManager":Lcom/mopub/mobileads/VastInLineXmlManager;
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lcom/mopub/mobileads/VastInLineXmlManager;

    .end local v1    # "vastInLineXmlManager":Lcom/mopub/mobileads/VastInLineXmlManager;
    invoke-direct {v1, v0}, Lcom/mopub/mobileads/VastInLineXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    .line 46
    .restart local v1    # "vastInLineXmlManager":Lcom/mopub/mobileads/VastInLineXmlManager;
    :cond_0
    return-object v1
.end method

.method getSequence()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/VastAdXmlManager;->mAdNode:Lorg/w3c/dom/Node;

    const-string v1, "sequence"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWrapperXmlManager()Lcom/mopub/mobileads/VastWrapperXmlManager;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 56
    iget-object v2, p0, Lcom/mopub/mobileads/VastAdXmlManager;->mAdNode:Lorg/w3c/dom/Node;

    const-string v3, "Wrapper"

    invoke-static {v2, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 57
    .local v1, "wrapperNode":Lorg/w3c/dom/Node;
    const/4 v0, 0x0

    .line 58
    .local v0, "vastWrapperXmlManager":Lcom/mopub/mobileads/VastWrapperXmlManager;
    if-eqz v1, :cond_0

    .line 59
    new-instance v0, Lcom/mopub/mobileads/VastWrapperXmlManager;

    .end local v0    # "vastWrapperXmlManager":Lcom/mopub/mobileads/VastWrapperXmlManager;
    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastWrapperXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    .line 61
    .restart local v0    # "vastWrapperXmlManager":Lcom/mopub/mobileads/VastWrapperXmlManager;
    :cond_0
    return-object v0
.end method
