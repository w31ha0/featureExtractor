.class Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor$1;
.super Ljava/lang/Object;
.source "ActionId13ErrorDescriptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor$1;->this$0:Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor$1;->this$0:Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;->access$000(Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string/jumbo v0, "nf_appboot_error"

    const-string/jumbo v1, "User agent is ready, just logout."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor$1;->this$0:Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;->access$000(Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->forceLogoutUser(Z)V

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string/jumbo v0, "nf_appboot_error"

    const-string/jumbo v1, "User agent is NOT ready, do brute force."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor$1;->this$0:Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;->access$100(Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->clearApplicationData(Landroid/content/Context;)V

    goto :goto_0
.end method
