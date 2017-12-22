.class Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;
.super Ljava/lang/Object;
.source "BillboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

.field final synthetic val$bookmarkPosition:Ljava/lang/String;

.field final synthetic val$playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

.field final synthetic val$serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->val$serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->val$bookmarkPosition:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->val$playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 763
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->ACTION:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addTokenToImpression(Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;)V

    .line 764
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->val$serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->val$serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->val$serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->ACTION:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->val$bookmarkPosition:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    move v1, v0

    .line 768
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->val$playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, v2, v3, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;I)V

    .line 769
    return-void

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->val$bookmarkPosition:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method
