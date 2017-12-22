.class Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;
.super Ljava/lang/Object;
.source "ConfigurationAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

.field final synthetic val$createCryptoStartTime:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;J)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    iput-wide p2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->val$createCryptoStartTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drmError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$400(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 325
    return-void
.end method

.method public drmReady()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 294
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "DRM manager is ready took=%d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->val$createCryptoStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->r(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$000(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->hasEsnChanged(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v0, v8}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$102(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Z)Z

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->clearEsnDependedSavedData()V

    .line 300
    :cond_0
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "EsnMigration needed: %b"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$100(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    new-instance v1, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1$1;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$1;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->fetchEsnDependentConfigsOnAppStart(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    .line 316
    return-void
.end method

.method public drmResoureReclaimed()V
    .locals 2

    .prologue
    .line 329
    const-string/jumbo v0, "nf_configurationagent"

    const-string/jumbo v1, "::init: drmResoureReclaimed:: NOOP"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method
