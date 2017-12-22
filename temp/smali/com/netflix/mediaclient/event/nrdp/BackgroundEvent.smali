.class public Lcom/netflix/mediaclient/event/nrdp/BackgroundEvent;
.super Lcom/netflix/mediaclient/event/nrdp/BaseNrdpEvent;
.source "BackgroundEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf-nccp"

.field public static final TYPE:Ljava/lang/String; = "background"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)V
    .locals 3

    .prologue
    .line 39
    const-string/jumbo v0, "background"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/event/nrdp/BaseNrdpEvent;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;->json:Lorg/json/JSONObject;

    .line 46
    if-nez v0, :cond_0

    .line 47
    const-string/jumbo v0, "nf-nccp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JSON was null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    :cond_0
    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/BackgroundEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/BackgroundEvent;->json:Lorg/json/JSONObject;

    .line 53
    return-void
.end method
