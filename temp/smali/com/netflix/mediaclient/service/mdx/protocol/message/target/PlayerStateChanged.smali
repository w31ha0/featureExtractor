.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerStateChanged;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;
.source "PlayerStateChanged.java"


# instance fields
.field private mPlayerState:Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "PLAYER_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerStateChanged;->mPlayerState:Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerStateChanged;->appBodyJson:Lorg/json/JSONObject;

    .line 30
    return-void
.end method


# virtual methods
.method public getPlayerState()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerStateChanged;->mPlayerState:Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;

    return-object v0
.end method
