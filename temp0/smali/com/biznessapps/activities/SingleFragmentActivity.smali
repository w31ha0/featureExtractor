.class public Lcom/biznessapps/activities/SingleFragmentActivity;
.super Lcom/biznessapps/activities/CommonTabFragmentActivity;
.source "SingleFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadFragments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/biznessapps/activities/SingleFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/api/AppFragmentManager;->getFragmentByController(Landroid/content/Intent;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 22
    .local v2, "singleFragment":Landroid/support/v4/app/Fragment;
    instance-of v3, v2, Lcom/biznessapps/fragments/single/AroundUsFragment;

    if-eqz v3, :cond_0

    .line 23
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/activities/SingleFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/biznessapps/activities/AroundUsActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v0, "aroudUsActivity":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/biznessapps/activities/SingleFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/SingleFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 26
    invoke-virtual {p0}, Lcom/biznessapps/activities/SingleFragmentActivity;->finish()V

    .line 28
    .end local v0    # "aroudUsActivity":Landroid/content/Intent;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-object v1
.end method
