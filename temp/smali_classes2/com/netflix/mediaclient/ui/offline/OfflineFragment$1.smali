.class Lcom/netflix/mediaclient/ui/offline/OfflineFragment$1;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;
.source "OfflineFragment.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

.field final synthetic val$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$1;->val$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$1;->val$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->access$000(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)V

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->access$100(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)V

    .line 190
    :cond_0
    return-void
.end method
