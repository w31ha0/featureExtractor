.class public abstract Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "PlayerEvent.java"

# interfaces
.implements Lcom/netflix/mediaclient/event/UIEvent;


# static fields
.field public static final INVALID_SESSION_ID:J = -0x1L

.field private static final PLAYER_BRIDGE_OBJ:Ljava/lang/String; = "nrdp.player"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "nrdp.player"

    return-object v0
.end method
