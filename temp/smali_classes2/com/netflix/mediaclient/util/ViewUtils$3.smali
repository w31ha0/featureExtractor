.class final Lcom/netflix/mediaclient/util/ViewUtils$3;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic val$desc:Ljava/lang/CharSequence;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/netflix/mediaclient/util/ViewUtils$3;->val$root:Landroid/view/View;

    iput-object p2, p0, Lcom/netflix/mediaclient/util/ViewUtils$3;->val$desc:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/util/ViewUtils$3;->val$root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/ViewUtils$3;->val$desc:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 509
    const/4 v0, 0x1

    return v0
.end method
