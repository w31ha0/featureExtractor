.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;
.super Ljava/lang/Object;
.source "NetflixActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic val$error:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

.field final synthetic val$sm:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)V
    .locals 0

    .prologue
    .line 2900
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->val$sm:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iput-object p3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->val$error:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->val$sm:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->val$error:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->setErrorAccepted(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)V

    .line 2904
    return-void
.end method
