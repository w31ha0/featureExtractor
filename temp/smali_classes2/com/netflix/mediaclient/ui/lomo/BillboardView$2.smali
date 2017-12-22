.class Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;
.super Ljava/lang/Object;
.source "BillboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

.field final synthetic val$serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;->val$serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 606
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->ACTION:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addTokenToImpression(Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;)V

    .line 607
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;->val$serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;->val$serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;->val$serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->ACTION:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getTopLevelId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getParentTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    const-string/jumbo v5, "BbView"

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V

    .line 613
    return-void
.end method
