.class Lcom/netflix/mediaclient/ui/login/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/login/LoginActivity;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/LoginActivity$2;->this$0:Lcom/netflix/mediaclient/ui/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LoginActivity$2;->this$0:Lcom/netflix/mediaclient/ui/login/LoginActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->access$000(Lcom/netflix/mediaclient/ui/login/LoginActivity;)Landroid/app/Fragment;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LoginActivity$2;->this$0:Lcom/netflix/mediaclient/ui/login/LoginActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->handleManagerResponse(Landroid/app/Activity;Lcom/netflix/mediaclient/android/app/Status;)Z

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LoginActivity$2;->this$0:Lcom/netflix/mediaclient/ui/login/LoginActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->access$000(Lcom/netflix/mediaclient/ui/login/LoginActivity;)Landroid/app/Fragment;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 206
    :cond_0
    return-void
.end method
