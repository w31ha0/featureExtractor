.class final Lcom/biznessapps/fragments/utils/TellFriendDelegate$2;
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
.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 49
    iget-object v2, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$2;->val$context:Landroid/content/Context;

    sget v3, Lcom/biznessapps/layout/R$string;->email_body_format:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "emailBodyFormat":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$2;->val$context:Landroid/content/Context;

    sget v3, Lcom/biznessapps/layout/R$string;->email_subject_format:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "emailSubjectFormat":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$2;->val$activity:Landroid/app/Activity;

    const/4 v3, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$2;->val$context:Landroid/content/Context;

    sget v6, Lcom/biznessapps/layout/R$string;->app_name:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$2;->val$context:Landroid/content/Context;

    sget v8, Lcom/biznessapps/layout/R$string;->app_name:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " https://market.android.com/details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$2;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
