.class final Lcom/biznessapps/fragments/utils/TellFriendDelegate$3;
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


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$3;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://facebook.com/sharer.php?u= https://market.android.com/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->facebook:I

    invoke-static {v0, v1, v2}, Lcom/biznessapps/fragments/utils/TellFriendDelegate;->access$100(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 64
    return-void
.end method
