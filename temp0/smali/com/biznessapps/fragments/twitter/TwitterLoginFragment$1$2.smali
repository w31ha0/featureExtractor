.class Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1$2;
.super Ljava/lang/Object;
.source "TwitterLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1$2;->this$1:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1$2;->this$1:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;

    iget-object v0, v0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$400(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1$2;->this$1:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;

    iget-object v0, v0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$400(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1$2;->this$1:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;

    iget-object v0, v0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;->val$activity:Landroid/app/Activity;

    sget v1, Lcom/biznessapps/layout/R$string;->twitting_failure:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/content/Context;I)V

    .line 75
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1$2;->this$1:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;

    iget-object v0, v0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 76
    return-void
.end method
