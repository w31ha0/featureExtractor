.class Lcom/netflix/mediaclient/ui/lomo/CwView$1;
.super Ljava/lang/Object;
.source "CwView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/CwView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/CwView;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/CwView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/CwView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/CwView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/CwView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 48
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/CwView;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/lomo/CwView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/CwView$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/CwView;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lomo/CwView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string/jumbo v0, "CwView onClick(): video is null"

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    goto :goto_0
.end method
