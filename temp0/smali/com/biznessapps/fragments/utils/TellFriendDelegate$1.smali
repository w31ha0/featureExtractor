.class final Lcom/biznessapps/fragments/utils/TellFriendDelegate$1;
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

.field final synthetic val$root:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$1;->val$root:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$1;->val$root:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/utils/TellFriendDelegate;->access$000(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 44
    return-void
.end method
