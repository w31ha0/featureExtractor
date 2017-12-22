.class Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView$1;
.super Ljava/lang/Object;
.source "MementoFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;

.field final synthetic val$actor:Lcom/netflix/model/branches/FalkorPerson;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;Lcom/netflix/model/branches/FalkorPerson;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView$1;->val$actor:Lcom/netflix/model/branches/FalkorPerson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 654
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView$1;->val$actor:Lcom/netflix/model/branches/FalkorPerson;

    iget-object v1, v1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoGoToRDP:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->memento:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 660
    :cond_0
    return-void
.end method
