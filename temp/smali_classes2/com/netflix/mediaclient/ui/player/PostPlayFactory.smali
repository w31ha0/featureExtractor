.class public Lcom/netflix/mediaclient/ui/player/PostPlayFactory;
.super Ljava/lang/Object;
.source "PostPlayFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)Lcom/netflix/mediaclient/ui/player/PostPlay;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    return-object v0
.end method
