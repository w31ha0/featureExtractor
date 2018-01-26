.class Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$5;
.super Lcom/biznessapps/api/AsyncCallback;
.source "FanAddCommentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->postComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/AsyncCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$5;->this$0:Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/biznessapps/api/AsyncCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    iget-object v1, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$5;->this$0:Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    .line 120
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->comment_adding_failure:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 122
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 123
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 125
    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 105
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$5;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$5;->this$0:Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    .line 109
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->comment_successfully_added:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 111
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 112
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 114
    :cond_0
    return-void
.end method
