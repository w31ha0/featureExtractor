.class Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$2;
.super Ljava/lang/Object;
.source "ConfigurationAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$2;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 446
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$2;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    monitor-enter v1

    .line 447
    :try_start_0
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v2, "Invoking ConfigAgentListeners."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$2;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$502(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Z)Z

    .line 449
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$2;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$600(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;

    .line 450
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$2;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$700(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;->onConfigRefreshed(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 452
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$2;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$600(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 453
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    return-void
.end method
