.class Lcom/biznessapps/fragments/fanwall/FanWallFragment$1;
.super Ljava/lang/Object;
.source "FanWallFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/fanwall/FanWallFragment;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$1;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/FanWallComment;

    .line 145
    .local v1, "item":Lcom/biznessapps/model/FanWallComment;
    if-eqz v1, :cond_0

    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$1;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "FAN_WALL_COMMENT_PARENT_ID"

    invoke-virtual {v1}, Lcom/biznessapps/model/FanWallComment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v3, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$1;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "tabId":Ljava/lang/String;
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "FanWallViewController"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v3, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$1;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    invoke-virtual {v3, v0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->startActivity(Landroid/content/Intent;)V

    .line 153
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "tabId":Ljava/lang/String;
    :cond_0
    return-void
.end method
