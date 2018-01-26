.class Lcom/biznessapps/fragments/single/TellFriendsFragment$1;
.super Ljava/lang/Object;
.source "TellFriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/TellFriendsFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/TellFriendsFragment;

.field final synthetic val$tellFriendContent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/TellFriendsFragment;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment$1;->this$0:Lcom/biznessapps/fragments/single/TellFriendsFragment;

    iput-object p2, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment$1;->val$tellFriendContent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment$1;->this$0:Lcom/biznessapps/fragments/single/TellFriendsFragment;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment$1;->val$tellFriendContent:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->access$000(Lcom/biznessapps/fragments/single/TellFriendsFragment;Landroid/view/ViewGroup;)V

    .line 72
    return-void
.end method
