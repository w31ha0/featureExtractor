.class public Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "ImpressionEvent.java"


# static fields
.field protected static final CATEGORY:Ljava/lang/String; = "uiView"

.field protected static final NAME:Ljava/lang/String; = "impression"

.field protected static final TRACK_ID:Ljava/lang/String; = "trackId"

.field protected static final VIEW:Ljava/lang/String; = "view"


# instance fields
.field private mTrackId:I

.field private mView:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;I)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 29
    const-string/jumbo v0, "impression"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;->name:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "uiView"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;->category:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;->mView:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 32
    iput p2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;->mTrackId:I

    .line 33
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;->mView:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    if-eqz v1, :cond_1

    .line 48
    const-string/jumbo v1, "view"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;->mView:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_1
    const-string/jumbo v1, "trackId"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;->mTrackId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    return-object v0
.end method
