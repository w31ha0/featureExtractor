.class Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$2;
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
    .line 118
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$2;->val$codes:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string/jumbo v0, "mdxui"

    const-string/jumbo v2, "Already clicked!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    monitor-exit v1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->dismissAllowingStateLoss()V

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 135
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$MessageResponseProvider;

    if-eqz v1, :cond_0

    .line 136
    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$MessageResponseProvider;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$2;->val$codes:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$MessageResponseProvider;->onResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
