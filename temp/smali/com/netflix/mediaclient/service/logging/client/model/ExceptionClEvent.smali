.class public Lcom/netflix/mediaclient/service/logging/client/model/ExceptionClEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/Event;
.source "ExceptionClEvent.java"


# static fields
.field public static final CATEGORY_VALUE:Ljava/lang/String; = "error"

.field public static final NAME_VALUE:Ljava/lang/String; = "ExceptionLogCl"


# instance fields
.field private mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/ExceptionClEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    .line 14
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/ExceptionClEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    .line 16
    const-string/jumbo v0, "ExceptionLogCl"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/ExceptionClEvent;->name:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "error"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/ExceptionClEvent;->category:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 22
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/ExceptionClEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    if-eqz v1, :cond_1

    .line 28
    const-string/jumbo v1, "errorObj"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/ExceptionClEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :cond_1
    return-object v0
.end method
