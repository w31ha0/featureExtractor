.class Lcom/biznessapps/layout/MainController$1$1;
.super Ljava/lang/Object;
.source "MainController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/layout/MainController$1;->onResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/layout/MainController$1;

.field final synthetic val$tabList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/biznessapps/layout/MainController$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iput-object p2, p0, Lcom/biznessapps/layout/MainController$1$1;->val$tabList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 95
    iget-object v9, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v9, v9, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-static {v9}, Lcom/biznessapps/layout/MainController;->access$000(Lcom/biznessapps/layout/MainController;)V

    .line 98
    iget-object v9, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v9, v9, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->val$tabList:Ljava/util/List;

    invoke-static {v9, v10}, Lcom/biznessapps/layout/MainController;->access$100(Lcom/biznessapps/layout/MainController;Ljava/util/List;)V

    .line 100
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v0

    .line 101
    .local v0, "appSettings":Lcom/biznessapps/model/AppSettings;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/AppCore;->init()V

    .line 104
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v8, "tabsToDisplay":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    iget-object v9, p0, Lcom/biznessapps/layout/MainController$1$1;->val$tabList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/model/Tab;

    .line 106
    .local v7, "tab":Lcom/biznessapps/model/Tab;
    invoke-virtual {v7}, Lcom/biznessapps/model/Tab;->getImage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Lcom/biznessapps/model/Tab;->getImage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    invoke-virtual {v7}, Lcom/biznessapps/model/Tab;->getLabel()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Lcom/biznessapps/model/Tab;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 111
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v1, "checkingIntent":Landroid/content/Intent;
    const-string v9, "TAB_FRAGMENT"

    invoke-virtual {v7}, Lcom/biznessapps/model/Tab;->getViewController()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-static {v1}, Lcom/biznessapps/api/AppFragmentManager;->getFragmentByController(Landroid/content/Intent;)Landroid/support/v4/app/Fragment;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 116
    const-string v9, "messagesviewcontroller"

    invoke-virtual {v7}, Lcom/biznessapps/model/Tab;->getViewController()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 117
    iget-object v9, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v9, v9, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-static {v9, v7}, Lcom/biznessapps/layout/MainController;->access$200(Lcom/biznessapps/layout/MainController;Lcom/biznessapps/model/Tab;)V

    .line 119
    :cond_3
    const-string v9, "MailingListViewController"

    invoke-virtual {v7}, Lcom/biznessapps/model/Tab;->getViewController()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 120
    invoke-virtual {v7}, Lcom/biznessapps/model/Tab;->getId()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/biznessapps/model/AppSettings;->setMailingListTabId(J)V

    .line 122
    :cond_4
    iget-object v9, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v9, v9, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v9}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v7}, Lcom/biznessapps/model/Tab;->getImage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/biznessapps/layout/MainController;->access$300(Lcom/biznessapps/layout/MainController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/biznessapps/utils/ViewUtils;->getImageResourceIdByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 124
    .local v5, "imageId":I
    invoke-virtual {v7, v5}, Lcom/biznessapps/model/Tab;->setImageId(I)V

    .line 125
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 127
    .end local v1    # "checkingIntent":Landroid/content/Intent;
    .end local v5    # "imageId":I
    .end local v7    # "tab":Lcom/biznessapps/model/Tab;
    :cond_5
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->isUseNewDesign()Z

    move-result v9

    invoke-static {v9}, Lcom/biznessapps/api/navigation/NavigationManager;->hasNewDesign(Z)V

    .line 128
    invoke-static {v8}, Lcom/biznessapps/api/navigation/NavigationManager;->setTabsItems(Ljava/util/List;)V

    .line 130
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 131
    new-instance v2, Landroid/content/Intent;

    iget-object v9, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v9, v9, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v9}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v2, "firstScreenIntent":Landroid/content/Intent;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v13, :cond_7

    .line 133
    invoke-static {v13}, Lcom/biznessapps/api/navigation/NavigationManager;->hasNewDesign(Z)V

    .line 134
    const-string v10, "TAB_FRAGMENT"

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/biznessapps/model/Tab;

    invoke-virtual {v9}, Lcom/biznessapps/model/Tab;->getViewController()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v10, "TAB_SPECIAL_ID"

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/biznessapps/model/Tab;

    invoke-virtual {v9}, Lcom/biznessapps/model/Tab;->getTabId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v9, "OPEN_MESSAGE_TAB_PROPERTY"

    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-static {v10}, Lcom/biznessapps/layout/MainController;->access$400(Lcom/biznessapps/layout/MainController;)Z

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    iget-object v9, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v9, v9, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v9, v2}, Lcom/biznessapps/layout/MainController;->startActivity(Landroid/content/Intent;)V

    .line 154
    .end local v2    # "firstScreenIntent":Landroid/content/Intent;
    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v9, v9, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v9}, Lcom/biznessapps/layout/MainController;->finish()V

    .line 155
    return-void

    .line 139
    .restart local v2    # "firstScreenIntent":Landroid/content/Intent;
    :cond_7
    iget-object v9, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v9, v9, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-static {v9}, Lcom/biznessapps/layout/MainController;->access$500(Lcom/biznessapps/layout/MainController;)V

    .line 140
    iget-object v9, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v9, v9, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-static {v9}, Lcom/biznessapps/layout/MainController;->access$400(Lcom/biznessapps/layout/MainController;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 141
    iget-object v9, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v9, v9, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-static {v9}, Lcom/biznessapps/layout/MainController;->access$600(Lcom/biznessapps/layout/MainController;)V

    goto :goto_1

    .line 143
    :cond_8
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->isUseNewDesign()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 144
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v9, v9, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v9}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/biznessapps/activities/HomeScreenActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v3, "homeScreenIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v9, v9, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v9, v3}, Lcom/biznessapps/layout/MainController;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 147
    .end local v3    # "homeScreenIntent":Landroid/content/Intent;
    :cond_9
    new-instance v6, Lcom/biznessapps/api/navigation/NavigationManager;

    iget-object v9, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v9, v9, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-direct {v6, v9}, Lcom/biznessapps/api/navigation/NavigationManager;-><init>(Landroid/app/Activity;)V

    .line 148
    .local v6, "navigManager":Lcom/biznessapps/api/navigation/NavigationManager;
    invoke-virtual {v6}, Lcom/biznessapps/api/navigation/NavigationManager;->updateTabs()V

    .line 149
    invoke-virtual {v6}, Lcom/biznessapps/api/navigation/NavigationManager;->openFirstTab()Z

    goto :goto_1
.end method
