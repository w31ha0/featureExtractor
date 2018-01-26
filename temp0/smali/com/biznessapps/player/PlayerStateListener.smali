.class public Lcom/biznessapps/player/PlayerStateListener;
.super Ljava/lang/Object;
.source "PlayerStateListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 33
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 15
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method
