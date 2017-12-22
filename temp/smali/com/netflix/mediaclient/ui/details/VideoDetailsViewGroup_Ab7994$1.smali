.class Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$1;
.super Ljava/lang/Object;
.source "VideoDetailsViewGroup_Ab7994.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;

.field final synthetic val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$1;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$1;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$1;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$1;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$1;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$1;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/IrisUtils;->startShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 156
    return-void
.end method
