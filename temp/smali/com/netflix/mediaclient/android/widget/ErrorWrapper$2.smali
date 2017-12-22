.class Lcom/netflix/mediaclient/android/widget/ErrorWrapper$2;
.super Ljava/lang/Object;
.source "ErrorWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/ErrorWrapper;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/ErrorWrapper;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$2;->this$0:Lcom/netflix/mediaclient/android/widget/ErrorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 165
    const-string/jumbo v0, "ErrorWrapper"

    const-string/jumbo v1, "Retry requested"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$2;->this$0:Lcom/netflix/mediaclient/android/widget/ErrorWrapper;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->access$000(Lcom/netflix/mediaclient/android/widget/ErrorWrapper;)Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$2;->this$0:Lcom/netflix/mediaclient/android/widget/ErrorWrapper;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;->access$000(Lcom/netflix/mediaclient/android/widget/ErrorWrapper;)Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;->onRetryRequested()V

    .line 169
    :cond_0
    return-void
.end method
