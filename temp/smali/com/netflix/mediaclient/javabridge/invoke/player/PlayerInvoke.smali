.class abstract Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "PlayerInvoke.java"


# static fields
.field private static final TARGET:Ljava/lang/String; = "player"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "player"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
