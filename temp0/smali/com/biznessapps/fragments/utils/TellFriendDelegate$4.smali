.class final Lcom/biznessapps/fragments/utils/TellFriendDelegate$4;
.super Ljava/lang/Object;
.source "TellFriendDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/utils/TellFriendDelegate;->initTellFriends(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$root:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$4;->val$root:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->hasTwitterData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->tweetAppName(Landroid/content/Context;)V

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$4;->val$root:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/utils/TellFriendDelegate;->access$000(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 76
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/biznessapps/fragments/utils/TellFriendDelegate;->access$200(Landroid/app/Activity;)V

    goto :goto_0
.end method
