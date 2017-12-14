.class Lcom/tutusw/phonespeedup/PerflockActivity$Disable$1;
.super Landroid/os/Handler;
.source "PerflockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/PerflockActivity$Disable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tutusw/phonespeedup/PerflockActivity$Disable;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/PerflockActivity$Disable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable$1;->this$1:Lcom/tutusw/phonespeedup/PerflockActivity$Disable;

    .line 142
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable$1;->this$1:Lcom/tutusw/phonespeedup/PerflockActivity$Disable;

    invoke-static {v1}, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->access$1(Lcom/tutusw/phonespeedup/PerflockActivity$Disable;)Lcom/tutusw/phonespeedup/PerflockActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tutusw/phonespeedup/PerflockActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    iget-object v1, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable$1;->this$1:Lcom/tutusw/phonespeedup/PerflockActivity$Disable;

    invoke-static {v1}, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->access$1(Lcom/tutusw/phonespeedup/PerflockActivity$Disable;)Lcom/tutusw/phonespeedup/PerflockActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tutusw/phonespeedup/PerflockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable$1;->this$1:Lcom/tutusw/phonespeedup/PerflockActivity$Disable;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->errorMsg:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 147
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    return-void
.end method
