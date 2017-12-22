.class public Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "SearchImpressionEvent.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static final CATEGORY:Ljava/lang/String; = "uiView"

.field private static final NAME:Ljava/lang/String; = "impression"


# instance fields
.field private childIds:[Ljava/lang/String;

.field private from:I

.field private searchReferenceId:Ljava/lang/String;

.field private to:I

.field private view:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;


# direct methods
.method public constructor <init>(Ljava/lang/String;II[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 26
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->setupData(Ljava/lang/String;II[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 27
    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->setupAttributes(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 28
    return-void
.end method

.method private idsToString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->childIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 77
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->childIds:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->childIds:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    .line 83
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_1
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setupAttributes(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 1

    .prologue
    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 41
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->event:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    .line 42
    const-string/jumbo v0, "uiView"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->category:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->name:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "impression"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private setupData(Ljava/lang/String;II[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 31
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 32
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->childIds:[Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->searchReferenceId:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->from:I

    .line 35
    iput-object p6, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->view:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 36
    iput p3, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->to:I

    .line 37
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->childIds:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->childIds:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 58
    const-string/jumbo v1, "[\'search\', \'lists\', \'%s\',{\'from\': %d, \'to\': %d,\'ids\':[%s]}]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->searchReferenceId:Ljava/lang/String;

    aput-object v3, v2, v4

    iget v3, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->from:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->to:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->idsToString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 63
    :goto_0
    const-string/jumbo v2, "path"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->view:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    if-eqz v1, :cond_1

    .line 65
    const-string/jumbo v1, "view"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->view:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    :cond_1
    return-object v0

    .line 60
    :cond_2
    const-string/jumbo v1, "[\'search\', \'lists\', \'%s\',{\'from\': %d, \'to\': %d}]"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->searchReferenceId:Ljava/lang/String;

    aput-object v3, v2, v4

    iget v3, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->from:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->to:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
