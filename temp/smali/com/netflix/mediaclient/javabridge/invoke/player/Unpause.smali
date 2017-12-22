.class public Lcom/netflix/mediaclient/javabridge/invoke/player/Unpause;
.super Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;
.source "Unpause.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "unpause"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "unpause"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
