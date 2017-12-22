.class Lcom/netflix/mediaclient/service/NrdController$NrdBridge;
.super Ljava/lang/Object;
.source "NrdController.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/Bridge;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/NrdController;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/NrdController;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/NrdController;Lcom/netflix/mediaclient/service/NrdController$1;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;-><init>(Lcom/netflix/mediaclient/service/NrdController;)V

    return-void
.end method


# virtual methods
.method public enableLowBitrateStreams()Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->enableLowBitrateStreams()Z

    move-result v0

    return v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigVideoBufferSize()I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVideoBufferSize()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getDeviceLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getDisplaySize()Landroid/view/Display;
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystemRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallationSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AppStoreHelper;->getInstallationSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NrdController;->access$200(Lcom/netflix/mediaclient/service/NrdController;)Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    return-object v0
.end method

.method public getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NrdController;->access$100(Lcom/netflix/mediaclient/service/NrdController;)Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeviceLowMem()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDeviceLowMem()Z

    move-result v0

    return v0
.end method
