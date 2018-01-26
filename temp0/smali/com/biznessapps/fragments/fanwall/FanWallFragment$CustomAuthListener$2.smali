.class Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener$2;
.super Lcom/biznessapps/facebook/AsyncRequestListener;
.source "FanWallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;->onAuthSucceed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener$2;->this$1:Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;

    invoke-direct {p0}, Lcom/biznessapps/facebook/AsyncRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 305
    if-nez p1, :cond_0

    .line 306
    iget-object v2, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener$2;->this$1:Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;

    iget-object v2, v2, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    invoke-virtual {v2}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->facebook_login_failure:I

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/content/Context;I)V

    .line 318
    :goto_0
    return-void

    .line 311
    :cond_0
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "uid":Ljava/lang/String;
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener$2;->this$1:Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;

    iget-object v2, v2, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    invoke-virtual {v2}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/biznessapps/api/CachingManager;->setFacebookUserName(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener$2;->this$1:Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;

    iget-object v2, v2, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    invoke-virtual {v2}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/biznessapps/api/CachingManager;->setFacebookUID(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener$2;->this$1:Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;

    iget-object v2, v2, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->access$200(Lcom/biznessapps/fragments/fanwall/FanWallFragment;Z)V

    goto :goto_0
.end method
