.class public Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;
.super Lcom/netflix/mediaclient/service/error/action/BaseAction;
.source "ExitPlayerAction.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/error/action/BaseAction;-><init>(Landroid/app/Activity;)V

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    if-eqz v0, :cond_0

    .line 30
    const-string/jumbo v0, "ErrorManager"

    const-string/jumbo v1, "Exit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 33
    :cond_0
    return-void
.end method
