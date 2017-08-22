.class public Lcom/mopub/mobileads/VastResourceXmlManager;
.super Ljava/lang/Object;
.source "VastResourceXmlManager.java"


# static fields
.field public static final CREATIVE_TYPE:Ljava/lang/String; = "creativeType"

.field public static final HTML_RESOURCE:Ljava/lang/String; = "HTMLResource"

.field public static final IFRAME_RESOURCE:Ljava/lang/String; = "IFrameResource"

.field public static final STATIC_RESOURCE:Ljava/lang/String; = "StaticResource"


# instance fields
.field private final mResourceNode:Lorg/w3c/dom/Node;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "resourceNode"    # Lorg/w3c/dom/Node;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    iput-object p1, p0, Lcom/mopub/mobileads/VastResourceXmlManager;->mResourceNode:Lorg/w3c/dom/Node;

    .line 26
    return-void
.end method


# virtual methods
.method getHTMLResource()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/VastResourceXmlManager;->mResourceNode:Lorg/w3c/dom/Node;

    const-string v1, "HTMLResource"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIFrameResource()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/VastResourceXmlManager;->mResourceNode:Lorg/w3c/dom/Node;

    const-string v1, "IFrameResource"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStaticResource()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/VastResourceXmlManager;->mResourceNode:Lorg/w3c/dom/Node;

    const-string v1, "StaticResource"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStaticResourceType()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    iget-object v2, p0, Lcom/mopub/mobileads/VastResourceXmlManager;->mResourceNode:Lorg/w3c/dom/Node;

    const-string v3, "StaticResource"

    invoke-static {v2, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 48
    .local v1, "staticResource":Lorg/w3c/dom/Node;
    const-string v2, "creativeType"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "attribute":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 52
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
