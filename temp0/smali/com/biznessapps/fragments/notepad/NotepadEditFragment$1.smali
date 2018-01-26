.class Lcom/biznessapps/fragments/notepad/NotepadEditFragment$1;
.super Ljava/lang/Object;
.source "NotepadEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/notepad/NotepadEditFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/notepad/NotepadEditFragment;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment$1;->this$0:Lcom/biznessapps/fragments/notepad/NotepadEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "choice"    # I

    .prologue
    .line 238
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 239
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment$1;->this$0:Lcom/biznessapps/fragments/notepad/NotepadEditFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->access$000(Lcom/biznessapps/fragments/notepad/NotepadEditFragment;)Lcom/biznessapps/fragments/notepad/NotepadItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/storage/StorageKeeper;->delNote(Lcom/biznessapps/fragments/notepad/NotepadItem;)V

    .line 240
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment$1;->this$0:Lcom/biznessapps/fragments/notepad/NotepadEditFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->access$102(Lcom/biznessapps/fragments/notepad/NotepadEditFragment;Z)Z

    .line 241
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment$1;->this$0:Lcom/biznessapps/fragments/notepad/NotepadEditFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->finish()V

    .line 243
    :cond_0
    return-void
.end method
