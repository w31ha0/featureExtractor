.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$4;
.super Ljava/lang/Object;
.source "RoleDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemView()Landroid/view/View;
    .locals 3

    .prologue
    .line 256
    new-instance v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/content/Context;)V

    return-object v0
.end method
