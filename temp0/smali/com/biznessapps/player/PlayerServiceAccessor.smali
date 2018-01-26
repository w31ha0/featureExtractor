.class public Lcom/biznessapps/player/PlayerServiceAccessor;
.super Lcom/biznessapps/player/BaseServiceAccessor;
.source "PlayerServiceAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/player/BaseServiceAccessor",
        "<",
        "Lcom/biznessapps/player/IPlayerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final REMOTE_EXCEPTION:Ljava/lang/String; = "RemoteException"

.field private static final TAG:Ljava/lang/String; = "ServiceAccessor"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/biznessapps/player/BaseServiceAccessor;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected bridge synthetic createServiceStub(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "x0"    # Landroid/os/IBinder;

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/biznessapps/player/PlayerServiceAccessor;->createServiceStub(Landroid/os/IBinder;)Lcom/biznessapps/player/IPlayerService;

    move-result-object v0

    return-object v0
.end method

.method protected createServiceStub(Landroid/os/IBinder;)Lcom/biznessapps/player/IPlayerService;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 74
    invoke-static {p1}, Lcom/biznessapps/player/IPlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/biznessapps/player/IPlayerService;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 79
    const-class v0, Lcom/biznessapps/player/PlayerService;

    return-object v0
.end method

.method public isInState(I)Z
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v2, p1}, Lcom/biznessapps/player/IPlayerService;->isInState(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    :goto_0
    return v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ServiceAccessor"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v1}, Lcom/biznessapps/player/IPlayerService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceAccessor"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public play(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v1, p1}, Lcom/biznessapps/player/IPlayerService;->play(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceAccessor"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v1}, Lcom/biznessapps/player/IPlayerService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceAccessor"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
