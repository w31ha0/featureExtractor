.class final Lcom/netflix/mediaclient/util/DeviceUtils$1;
.super Ljava/lang/Object;
.source "DeviceUtils.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;


# instance fields
.field final synthetic val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/netflix/mediaclient/util/DeviceUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public is5dot1Supported()Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/netflix/mediaclient/util/DeviceUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/util/DeviceUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isDolbyDigitalPlus51Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDolbyVisionSupported()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/netflix/mediaclient/util/DeviceUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/util/DeviceUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isDolbyVisionSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHdSupported()Z
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/netflix/mediaclient/util/DeviceUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/util/DeviceUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isDeviceHd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHdr10Supported()Z
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/netflix/mediaclient/util/DeviceUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/util/DeviceUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isHdr10Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUltraHdSupported()Z
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    return v0
.end method
