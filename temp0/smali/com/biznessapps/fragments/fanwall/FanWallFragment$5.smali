.class Lcom/biznessapps/fragments/fanwall/FanWallFragment$5;
.super Ljava/lang/Object;
.source "FanWallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/fanwall/FanWallFragment;->initListeners()V
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
    .line 181
    iput-object p1, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$5;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$5;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->hasFacebookData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$5;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->access$200(Lcom/biznessapps/fragments/fanwall/FanWallFragment;Z)V

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$5;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->access$100(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V

    .line 190
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$5;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    iget-object v0, v0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->logoutFacebookButton:Lcom/biznessapps/facebook/LoginButton;

    invoke-virtual {v0}, Lcom/biznessapps/facebook/LoginButton;->performClick()Z

    goto :goto_0
.end method
