.class Lcom/biznessapps/fragments/single/MailingFragment$3;
.super Lcom/biznessapps/api/AsyncCallback;
.source "MailingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/MailingFragment;->calculate()V
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
.field final synthetic this$0:Lcom/biznessapps/fragments/single/MailingFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/MailingFragment;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/biznessapps/fragments/single/MailingFragment$3;->this$0:Lcom/biznessapps/fragments/single/MailingFragment;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lcom/biznessapps/api/AsyncCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    iget-object v1, p0, Lcom/biznessapps/fragments/single/MailingFragment$3;->this$0:Lcom/biznessapps/fragments/single/MailingFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/single/MailingFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    .line 132
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->mailing_list_add_failure:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 136
    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 117
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/single/MailingFragment$3;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/biznessapps/fragments/single/MailingFragment$3;->this$0:Lcom/biznessapps/fragments/single/MailingFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/single/MailingFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    .line 121
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->mailing_list_add_success:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 124
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 126
    :cond_0
    return-void
.end method
