.class Lcom/biznessapps/fragments/CommonFragment$1;
.super Ljava/lang/Object;
.source "CommonFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/CommonFragment;->showMailingListPropmt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/CommonFragment;

.field final synthetic val$appSettings:Lcom/biznessapps/model/AppSettings;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/CommonFragment;Lcom/biznessapps/model/AppSettings;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/biznessapps/fragments/CommonFragment$1;->this$0:Lcom/biznessapps/fragments/CommonFragment;

    iput-object p2, p0, Lcom/biznessapps/fragments/CommonFragment$1;->val$appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 297
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/fragments/CommonFragment$1;->this$0:Lcom/biznessapps/fragments/CommonFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/CommonFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_LABEL"

    iget-object v2, p0, Lcom/biznessapps/fragments/CommonFragment$1;->this$0:Lcom/biznessapps/fragments/CommonFragment;

    invoke-virtual {v2}, Lcom/biznessapps/fragments/CommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "MailingListViewController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-object v1, p0, Lcom/biznessapps/fragments/CommonFragment$1;->this$0:Lcom/biznessapps/fragments/CommonFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/CommonFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->getNavigationManager()Lcom/biznessapps/api/navigation/NavigationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/biznessapps/fragments/CommonFragment$1;->this$0:Lcom/biznessapps/fragments/CommonFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/CommonFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->getNavigationManager()Lcom/biznessapps/api/navigation/NavigationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/CommonFragment$1;->val$appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/model/AppSettings;->getMailingListTabId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/api/navigation/NavigationManager;->setTabSelection(J)V

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/fragments/CommonFragment$1;->this$0:Lcom/biznessapps/fragments/CommonFragment;

    invoke-virtual {v1, v0}, Lcom/biznessapps/fragments/CommonFragment;->startActivity(Landroid/content/Intent;)V

    .line 304
    if-eqz p1, :cond_1

    .line 305
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 307
    :cond_1
    return-void
.end method
