.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$1;
.super Ljava/lang/Object;
.source "RoleDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetryRequested()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;->onRetryRequested()V

    .line 102
    return-void
.end method
