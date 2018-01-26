.class Lcom/biznessapps/fragments/single/HomeFragment$4;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/HomeFragment;->addTabButtons(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/HomeFragment;

.field final synthetic val$holdActivity:Landroid/app/Activity;

.field final synthetic val$tab:Lcom/biznessapps/model/Tab;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/HomeFragment;Lcom/biznessapps/model/Tab;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/biznessapps/fragments/single/HomeFragment$4;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    iput-object p2, p0, Lcom/biznessapps/fragments/single/HomeFragment$4;->val$tab:Lcom/biznessapps/model/Tab;

    iput-object p3, p0, Lcom/biznessapps/fragments/single/HomeFragment$4;->val$holdActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 257
    const/4 v4, 0x0

    .line 258
    .local v4, "tabToUse":Lcom/biznessapps/model/Tab;
    iget-object v5, p0, Lcom/biznessapps/fragments/single/HomeFragment$4;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-virtual {v5}, Lcom/biznessapps/fragments/single/HomeFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/CachingManager;->getTabList()Ljava/util/List;

    move-result-object v3

    .line 259
    .local v3, "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/Tab;

    .line 260
    .local v2, "item":Lcom/biznessapps/model/Tab;
    invoke-virtual {v2}, Lcom/biznessapps/model/Tab;->getTabId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/fragments/single/HomeFragment$4;->val$tab:Lcom/biznessapps/model/Tab;

    invoke-virtual {v6}, Lcom/biznessapps/model/Tab;->getTabId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    move-object v4, v2

    .line 265
    .end local v2    # "item":Lcom/biznessapps/model/Tab;
    :cond_1
    if-eqz v4, :cond_3

    .line 266
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/biznessapps/fragments/single/HomeFragment$4;->val$holdActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/biznessapps/fragments/single/HomeFragment$4;->val$tab:Lcom/biznessapps/model/Tab;

    invoke-virtual {v5}, Lcom/biznessapps/model/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 268
    const-string v5, "URL"

    invoke-virtual {v4}, Lcom/biznessapps/model/Tab;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    :cond_2
    const-string v5, "TAB_UNIQUE_ID"

    invoke-virtual {v4}, Lcom/biznessapps/model/Tab;->getId()J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 271
    const-string v5, "TAB_LABEL"

    invoke-virtual {v4}, Lcom/biznessapps/model/Tab;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v5, "TAB_SPECIAL_ID"

    invoke-virtual {v4}, Lcom/biznessapps/model/Tab;->getTabId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v5, "ITEMID"

    invoke-virtual {v4}, Lcom/biznessapps/model/Tab;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v5, "SECTIONID"

    invoke-virtual {v4}, Lcom/biznessapps/model/Tab;->getSectionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v5, "TAB_FRAGMENT"

    iget-object v6, p0, Lcom/biznessapps/fragments/single/HomeFragment$4;->val$tab:Lcom/biznessapps/model/Tab;

    invoke-virtual {v6}, Lcom/biznessapps/model/Tab;->getViewController()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v5, "TAB"

    iget-object v6, p0, Lcom/biznessapps/fragments/single/HomeFragment$4;->val$tab:Lcom/biznessapps/model/Tab;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 281
    iget-object v5, p0, Lcom/biznessapps/fragments/single/HomeFragment$4;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-virtual {v5, v1}, Lcom/biznessapps/fragments/single/HomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 283
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method
