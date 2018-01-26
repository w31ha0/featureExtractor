.class Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$2;
.super Ljava/lang/Object;
.source "FanAddCommentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$2;->this$0:Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$2;->this$0:Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->access$000(Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method
