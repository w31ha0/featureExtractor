.class Lcom/biznessapps/fragments/notepad/NotepadListFragment$1;
.super Ljava/lang/Object;
.source "NotepadListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/notepad/NotepadListFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/notepad/NotepadListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/notepad/NotepadListFragment;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/biznessapps/fragments/notepad/NotepadListFragment$1;->this$0:Lcom/biznessapps/fragments/notepad/NotepadListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadListFragment$1;->this$0:Lcom/biznessapps/fragments/notepad/NotepadListFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->access$000(Lcom/biznessapps/fragments/notepad/NotepadListFragment;Lcom/biznessapps/fragments/notepad/NotepadItem;I)V

    .line 47
    return-void
.end method
