.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$4;
.super Ljava/lang/Object;
.source "RoleDetailsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$4;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$4;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1000(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$4;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    iget v1, v1, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->currentPosition:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setItemChecked(I)V

    .line 764
    return-void
.end method
