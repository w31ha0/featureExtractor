.class Lcom/netflix/mediaclient/ui/login/LogoutActivity$2;
.super Ljava/lang/Object;
.source "LogoutActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/login/LogoutActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$2;->this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$2;->this$0:Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/login/LogoutActivity$LogoutHandler;-><init>(Lcom/netflix/mediaclient/ui/login/LogoutActivity;)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->logoutUser(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 67
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method
