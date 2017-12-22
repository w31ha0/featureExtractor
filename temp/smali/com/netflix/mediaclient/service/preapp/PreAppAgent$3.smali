.class Lcom/netflix/mediaclient/service/preapp/PreAppAgent$3;
.super Ljava/lang/Object;
.source "PreAppAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$3;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    const-string/jumbo v0, "nf_preappagent"

    const-string/jumbo v1, "inform prefetch done via runnable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$3;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$3;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->informMemberUpdated(Landroid/content/Context;)V

    .line 157
    :cond_0
    return-void
.end method
