.class Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$4;
.super Ljava/lang/Object;
.source "ThemeEditFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;

.field final synthetic val$colorSquare:Landroid/view/View;

.field final synthetic val$containerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$4;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$4;->val$colorSquare:Landroid/view/View;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$4;->val$containerView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$4;->this$0:Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$4;->val$colorSquare:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment$4;->val$containerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;->access$000(Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;Landroid/view/View;Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method
