.class Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2;
.super Landroid/content/BroadcastReceiver;
.source "RowAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "BaseRowAdapter"

    const-string/jumbo v1, "onReceive..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ContextUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 165
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ContextUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;)V

    .line 174
    :cond_0
    return-void
.end method
