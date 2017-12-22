.class Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$10;
.super Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;
.source "ConfigurationAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V
    .locals 0

    .prologue
    .line 1559
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$10;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDummyWebCallDone(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 1562
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;->onDummyWebCallDone(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1563
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "dummyCallDone status: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1564
    return-void
.end method
