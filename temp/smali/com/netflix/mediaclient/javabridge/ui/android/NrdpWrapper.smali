.class public final Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;
.super Ljava/lang/Object;
.source "NrdpWrapper.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Nrdp;


# instance fields
.field private deviceImpl:Lcom/netflix/mediaclient/javabridge/ui/Device;

.field private logImpl:Lcom/netflix/mediaclient/javabridge/ui/Log;

.field private mdxControllerImpl:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

.field private nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

.field private playerImpl:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

.field private storageImpl:Lcom/netflix/mediaclient/javabridge/ui/Storage;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/NrdProxy;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, "nrdp"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    .line 31
    const-string/jumbo v0, "nrdp.player"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->playerImpl:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    .line 32
    const-string/jumbo v0, "nrdp.storage"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Storage;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->storageImpl:Lcom/netflix/mediaclient/javabridge/ui/Storage;

    .line 33
    const-string/jumbo v0, "nrdp.log"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Log;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->logImpl:Lcom/netflix/mediaclient/javabridge/ui/Log;

    .line 34
    const-string/jumbo v0, "nrdp.device"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Device;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->deviceImpl:Lcom/netflix/mediaclient/javabridge/ui/Device;

    .line 35
    const-string/jumbo v0, "nrdp.mdx"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->mdxControllerImpl:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    .line 36
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 85
    return-void
.end method

.method public debug()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->debug()Z

    move-result v0

    return v0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->exit()V

    .line 43
    return-void
.end method

.method public getASPlayer()Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->playerImpl:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    return-object v0
.end method

.method public getConfigList()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getConfigList()V

    .line 71
    return-void
.end method

.method public getDevice()Lcom/netflix/mediaclient/javabridge/ui/Device;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->deviceImpl:Lcom/netflix/mediaclient/javabridge/ui/Device;

    return-object v0
.end method

.method public getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->logImpl:Lcom/netflix/mediaclient/javabridge/ui/Log;

    return-object v0
.end method

.method public getMdxController()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->mdxControllerImpl:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    return-object v0
.end method

.method public getStorage()Lcom/netflix/mediaclient/javabridge/ui/Storage;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->storageImpl:Lcom/netflix/mediaclient/javabridge/ui/Storage;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->isReady()Z

    move-result v0

    return v0
.end method

.method public now()J
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method public removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 92
    return-void
.end method

.method public setConfigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;->nrdpImpl:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->setConfigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
