.class Lcom/netflix/mediaclient/android/fragment/ErrorFrag$1;
.super Ljava/lang/Object;
.source "ErrorFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/fragment/ErrorFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/fragment/ErrorFrag;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/netflix/mediaclient/android/fragment/ErrorFrag$1;->this$0:Lcom/netflix/mediaclient/android/fragment/ErrorFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetryRequested()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/netflix/mediaclient/android/fragment/ErrorFrag$1;->this$0:Lcom/netflix/mediaclient/android/fragment/ErrorFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/ErrorFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;->onRetryRequested()V

    .line 19
    return-void
.end method
