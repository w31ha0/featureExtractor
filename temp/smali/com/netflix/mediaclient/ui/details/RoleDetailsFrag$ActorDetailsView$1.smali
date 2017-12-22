.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView$1;
.super Ljava/lang/Object;
.source "RoleDetailsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView$1;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView$1;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 510
    return-void
.end method
