.class Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$3;
.super Ljava/lang/Object;
.source "ShowMessageDialogFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

.field final synthetic val$codes:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$3;->val$codes:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const-string/jumbo v0, "mdxui"

    const-string/jumbo v2, "Already clicked!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    monitor-exit v1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->dismissAllowingStateLoss()V

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 160
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$MessageResponseProvider;

    if-eqz v1, :cond_0

    .line 161
    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$MessageResponseProvider;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$3;->val$codes:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$MessageResponseProvider;->onResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
