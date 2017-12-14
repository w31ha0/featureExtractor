.class Lcom/google/ssearch/Dialog$1;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ssearch/Dialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ssearch/Dialog;


# direct methods
.method constructor <init>(Lcom/google/ssearch/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/ssearch/Dialog$1;->this$0:Lcom/google/ssearch/Dialog;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    const-string v0, "su"

    iget-object v1, p0, Lcom/google/ssearch/Dialog$1;->this$0:Lcom/google/ssearch/Dialog;

    invoke-static {v1}, Lcom/google/ssearch/Dialog;->access$0(Lcom/google/ssearch/Dialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const-string v0, "set"

    iget-object v1, p0, Lcom/google/ssearch/Dialog$1;->this$0:Lcom/google/ssearch/Dialog;

    invoke-static {v1}, Lcom/google/ssearch/Dialog;->access$0(Lcom/google/ssearch/Dialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/ssearch/Dialog$1;->this$0:Lcom/google/ssearch/Dialog;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ssearch/Dialog;->startActivity(Landroid/content/Intent;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/ssearch/Dialog$1;->this$0:Lcom/google/ssearch/Dialog;

    invoke-virtual {v0}, Lcom/google/ssearch/Dialog;->finish()V

    .line 87
    return-void
.end method
