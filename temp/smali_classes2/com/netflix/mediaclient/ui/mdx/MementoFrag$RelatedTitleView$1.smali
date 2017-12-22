.class Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$1;
.super Ljava/lang/Object;
.source "MementoFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 738
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "cast_player"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    .line 739
    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRelatedMore:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->memento:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 751
    :cond_1
    return-void
.end method
