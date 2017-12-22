.class final Lcom/netflix/mediaclient/ui/login/LogoutActivity$1;
.super Ljava/lang/Object;
.source "LogoutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->create(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 52
    return-void
.end method
