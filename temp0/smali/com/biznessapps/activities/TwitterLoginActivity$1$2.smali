.class Lcom/biznessapps/activities/TwitterLoginActivity$1$2;
.super Ljava/lang/Object;
.source "TwitterLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/activities/TwitterLoginActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/activities/TwitterLoginActivity$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/activities/TwitterLoginActivity$1;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/biznessapps/activities/TwitterLoginActivity$1$2;->this$1:Lcom/biznessapps/activities/TwitterLoginActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/activities/TwitterLoginActivity$1$2;->this$1:Lcom/biznessapps/activities/TwitterLoginActivity$1;

    iget-object v0, v0, Lcom/biznessapps/activities/TwitterLoginActivity$1;->this$0:Lcom/biznessapps/activities/TwitterLoginActivity;

    invoke-static {v0}, Lcom/biznessapps/activities/TwitterLoginActivity;->access$400(Lcom/biznessapps/activities/TwitterLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/biznessapps/activities/TwitterLoginActivity$1$2;->this$1:Lcom/biznessapps/activities/TwitterLoginActivity$1;

    iget-object v0, v0, Lcom/biznessapps/activities/TwitterLoginActivity$1;->this$0:Lcom/biznessapps/activities/TwitterLoginActivity;

    invoke-static {v0}, Lcom/biznessapps/activities/TwitterLoginActivity;->access$400(Lcom/biznessapps/activities/TwitterLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/activities/TwitterLoginActivity$1$2;->this$1:Lcom/biznessapps/activities/TwitterLoginActivity$1;

    iget-object v0, v0, Lcom/biznessapps/activities/TwitterLoginActivity$1;->this$0:Lcom/biznessapps/activities/TwitterLoginActivity;

    sget v1, Lcom/biznessapps/layout/R$string;->twitting_failure:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/content/Context;I)V

    .line 82
    iget-object v0, p0, Lcom/biznessapps/activities/TwitterLoginActivity$1$2;->this$1:Lcom/biznessapps/activities/TwitterLoginActivity$1;

    iget-object v0, v0, Lcom/biznessapps/activities/TwitterLoginActivity$1;->this$0:Lcom/biznessapps/activities/TwitterLoginActivity;

    invoke-virtual {v0}, Lcom/biznessapps/activities/TwitterLoginActivity;->finish()V

    .line 83
    return-void
.end method
