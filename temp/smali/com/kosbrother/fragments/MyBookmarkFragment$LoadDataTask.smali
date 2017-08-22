.class Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "MyBookmarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/fragments/MyBookmarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;


# direct methods
.method constructor <init>(Lcom/kosbrother/fragments/MyBookmarkFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kosbrother/fragments/MyBookmarkFragment;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyBookmarkFragment;->access$000(Lcom/kosbrother/fragments/MyBookmarkFragment;)V

    .line 103
    const-string v0, "progress end"

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    iget-object v1, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/MyBookmarkFragment;->access$100(Lcom/kosbrother/fragments/MyBookmarkFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kosbrother/fragments/MyBookmarkFragment;->access$200(Lcom/kosbrother/fragments/MyBookmarkFragment;Ljava/util/ArrayList;)V

    .line 114
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 98
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/kosbrother/fragments/MyBookmarkFragment$LoadDataTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
