.class Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2$1;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "OnRampActivity.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;

.field final synthetic val$svcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2$1;->this$1:Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2$1;->val$svcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 117
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2$1;->this$1:Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://www.netflix.com/welcome/onramp?isProfilesOnRamp=true&nftoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->access$102(Lcom/netflix/mediaclient/ui/signup/OnRampActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2$1;->this$1:Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2$1;->val$svcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->setViews(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Z)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2$1;->this$1:Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->finish()V

    goto :goto_0
.end method
