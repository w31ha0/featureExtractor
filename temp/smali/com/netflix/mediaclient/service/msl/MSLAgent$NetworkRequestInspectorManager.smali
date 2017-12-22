.class Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;
.super Ljava/lang/Object;
.source "MSLAgent.java"


# instance fields
.field private mGlobalInspector:Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;

.field private mInspectorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;->mInspectorMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/msl/MSLAgent$1;)V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;-><init>()V

    return-void
.end method

.method private doAddListener(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V
    .locals 4

    .prologue
    .line 503
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 504
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;->mGlobalInspector:Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;

    .line 510
    :cond_1
    return-void

    .line 506
    :cond_2
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    .line 507
    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;->mInspectorMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private doRemoveListener([Ljava/lang/Class;)V
    .locals 4

    .prologue
    .line 514
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 515
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;->mGlobalInspector:Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;

    .line 521
    :cond_1
    return-void

    .line 517
    :cond_2
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 518
    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;->mInspectorMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method addListener(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 494
    if-nez p1, :cond_0

    .line 495
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;->doRemoveListener([Ljava/lang/Class;)V

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;->doAddListener(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method injectInspector(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;->mInspectorMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;

    .line 526
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;)V

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;->mGlobalInspector:Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->setInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;)V

    goto :goto_0
.end method

.method shouldAddInspector(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;->mInspectorMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;

    .line 536
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$NetworkRequestInspectorManager;->mGlobalInspector:Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
