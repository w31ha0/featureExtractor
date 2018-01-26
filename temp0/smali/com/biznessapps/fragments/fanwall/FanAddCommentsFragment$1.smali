.class Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$1;
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
    .line 58
    iput-object p1, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$1;->this$0:Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$1;->this$0:Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->finish()V

    .line 62
    return-void
.end method
