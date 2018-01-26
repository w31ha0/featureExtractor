.class Lcom/biznessapps/player/PlayerService$1;
.super Lcom/biznessapps/player/IPlayerService$Stub;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/player/PlayerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/player/PlayerService;


# direct methods
.method constructor <init>(Lcom/biznessapps/player/PlayerService;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-direct {p0}, Lcom/biznessapps/player/IPlayerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()Lcom/biznessapps/player/PlayerState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerService;->getPlayerState()Lcom/biznessapps/player/PlayerState;

    move-result-object v0

    return-object v0
.end method

.method public isInState(I)Z
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0, p1}, Lcom/biznessapps/player/PlayerService;->isInState(I)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerService;->pause()V

    .line 46
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0, p1}, Lcom/biznessapps/player/PlayerService;->play(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerService;->stop()V

    .line 41
    return-void
.end method
