.class Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;
.super Ljava/lang/Object;
.source "OnRampActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/OnRampActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 114
    const-wide/32 v0, 0x36ee80

    new-instance v2, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2$1;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2$1;-><init>(Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAutoLoginToken(JLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 129
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/netflix/model/leafs/OnRampEligibility$Action;->RECORD:Lcom/netflix/model/leafs/OnRampEligibility$Action;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    .line 133
    :cond_0
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 137
    const-string/jumbo v0, "OnRampActivity"

    const-string/jumbo v1, "NetflixService is NOT available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->finish()V

    .line 139
    return-void
.end method
