.class Lcom/netflix/mediaclient/service/NrdController$1$1;
.super Ljava/lang/Object;
.source "NrdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/NrdController$1;

.field final synthetic val$el:Lcom/netflix/mediaclient/javabridge/ui/EventListener;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NrdController$1;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->val$el:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 146
    const-string/jumbo v0, "nf_nrdcontroller"

    const-string/jumbo v1, "Bridge is initialized"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NrdController;->access$100(Lcom/netflix/mediaclient/service/NrdController;)Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    const-string/jumbo v1, "init"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->val$el:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NrdController;->access$100(Lcom/netflix/mediaclient/service/NrdController;)Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getDevice()Lcom/netflix/mediaclient/javabridge/ui/Device;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NrdController;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/Device;->setUIVersion(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NrdController;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCarrierInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 160
    new-instance v1, Lcom/netflix/mediaclient/service/logging/logblob/Startup;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NrdController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/NrdController;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/logging/logblob/Startup;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lorg/json/JSONObject;)V

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 163
    const-string/jumbo v0, "nf_nrdcontroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BLOB: startup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/logblob/Startup;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method
