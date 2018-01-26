.class Lcom/biznessapps/fragments/infoitems/InfoDetailFragment$3;
.super Landroid/webkit/WebViewClient;
.source "InfoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->updateControlsWithData(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;

.field final synthetic val$holdActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment$3;->this$0:Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;

    iput-object p2, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment$3;->val$holdActivity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 130
    if-nez p2, :cond_0

    .line 143
    :goto_0
    return v1

    .line 133
    :cond_0
    const-string v3, "mailto:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    invoke-static {p2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v0

    .line 135
    .local v0, "mt":Landroid/net/MailTo;
    iget-object v3, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment$3;->val$holdActivity:Landroid/app/Activity;

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4, v6, v6}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 138
    goto :goto_0

    .line 139
    .end local v0    # "mt":Landroid/net/MailTo;
    :cond_1
    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment$3;->this$0:Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 141
    goto :goto_0

    .line 143
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
