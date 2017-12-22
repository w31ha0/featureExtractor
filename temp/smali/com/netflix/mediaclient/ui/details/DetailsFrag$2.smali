.class Lcom/netflix/mediaclient/ui/details/DetailsFrag$2;
.super Ljava/lang/Object;
.source "DetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/DetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsFrag;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetryRequested()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;->onRetryRequested()V

    .line 217
    return-void
.end method
