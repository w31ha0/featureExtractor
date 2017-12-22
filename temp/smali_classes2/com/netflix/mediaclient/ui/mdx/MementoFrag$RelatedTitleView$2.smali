.class Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$2;
.super Ljava/lang/Object;
.source "MementoFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;

.field final synthetic val$swatch:Lcom/netflix/model/branches/MementoVideoSwatch;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;Lcom/netflix/model/branches/MementoVideoSwatch;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$2;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$2;->val$swatch:Lcom/netflix/model/branches/MementoVideoSwatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 776
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$2;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$2;->val$swatch:Lcom/netflix/model/branches/MementoVideoSwatch;

    iget-object v1, v1, Lcom/netflix/model/branches/MementoVideoSwatch;->firstVideoType:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$2;->val$swatch:Lcom/netflix/model/branches/MementoVideoSwatch;

    iget-object v2, v2, Lcom/netflix/model/branches/MementoVideoSwatch;->firstVideoId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$2;->val$swatch:Lcom/netflix/model/branches/MementoVideoSwatch;

    iget-object v3, v3, Lcom/netflix/model/branches/MementoVideoSwatch;->firstVideoTitle:Ljava/lang/String;

    sget-object v4, Lcom/netflix/mediaclient/ui/common/PlayContext;->NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->showMemento(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 779
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$2;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$2;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRelatedInset:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->memento:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$2;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 782
    :cond_0
    return-void
.end method
