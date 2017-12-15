.class final Lcom/creativemobi/DragRacing/social/j;
.super Landroid/webkit/WebViewClient;
.source "FbDialog.java"


# instance fields
.field private synthetic a:Lcom/creativemobi/DragRacing/social/g;


# direct methods
.method synthetic constructor <init>(Lcom/creativemobi/DragRacing/social/g;)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/DragRacing/social/j;-><init>(Lcom/creativemobi/DragRacing/social/g;B)V

    return-void
.end method

.method private constructor <init>(Lcom/creativemobi/DragRacing/social/g;B)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/creativemobi/DragRacing/social/j;->a:Lcom/creativemobi/DragRacing/social/g;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/j;->a:Lcom/creativemobi/DragRacing/social/g;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/social/g;->c(Lcom/creativemobi/DragRacing/social/g;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/creativemobi/DragRacing/social/j;->a:Lcom/creativemobi/DragRacing/social/g;

    invoke-static {v1}, Lcom/creativemobi/DragRacing/social/g;->d(Lcom/creativemobi/DragRacing/social/g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/j;->a:Lcom/creativemobi/DragRacing/social/g;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/social/g;->b(Lcom/creativemobi/DragRacing/social/g;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 182
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 169
    const-string v0, "Facebook-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 171
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/j;->a:Lcom/creativemobi/DragRacing/social/g;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/social/g;->b(Lcom/creativemobi/DragRacing/social/g;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 172
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/j;->a:Lcom/creativemobi/DragRacing/social/g;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/social/g;->a(Lcom/creativemobi/DragRacing/social/g;)Lcom/creativemobi/DragRacing/social/d;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/DragRacing/social/m;

    invoke-direct {v1, p3, p2, p4}, Lcom/creativemobi/DragRacing/social/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/creativemobi/DragRacing/social/d;->a(Lcom/creativemobi/DragRacing/social/m;)V

    .line 164
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/j;->a:Lcom/creativemobi/DragRacing/social/g;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/social/g;->dismiss()V

    .line 165
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 125
    const-string v0, "Facebook-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v0, "fbconnect://success"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    invoke-static {p2}, Lcom/creativemobi/DragRacing/social/l;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 129
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    if-nez v1, :cond_0

    .line 131
    const-string v1, "error_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_0
    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/creativemobi/DragRacing/social/j;->a:Lcom/creativemobi/DragRacing/social/g;

    invoke-static {v1}, Lcom/creativemobi/DragRacing/social/g;->a(Lcom/creativemobi/DragRacing/social/g;)Lcom/creativemobi/DragRacing/social/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/creativemobi/DragRacing/social/d;->a(Landroid/os/Bundle;)V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/j;->a:Lcom/creativemobi/DragRacing/social/g;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/social/g;->dismiss()V

    move v0, v4

    .line 155
    :goto_1
    return v0

    .line 136
    :cond_1
    const-string v0, "access_denied"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OAuthAccessDeniedException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/j;->a:Lcom/creativemobi/DragRacing/social/g;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/social/g;->a(Lcom/creativemobi/DragRacing/social/g;)Lcom/creativemobi/DragRacing/social/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/creativemobi/DragRacing/social/d;->a()V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/j;->a:Lcom/creativemobi/DragRacing/social/g;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/social/g;->a(Lcom/creativemobi/DragRacing/social/g;)Lcom/creativemobi/DragRacing/social/d;

    move-result-object v0

    new-instance v2, Lcom/creativemobi/DragRacing/social/p;

    invoke-direct {v2, v1}, Lcom/creativemobi/DragRacing/social/p;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/creativemobi/DragRacing/social/d;->a(Lcom/creativemobi/DragRacing/social/p;)V

    goto :goto_0

    .line 145
    :cond_4
    const-string v0, "fbconnect://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/j;->a:Lcom/creativemobi/DragRacing/social/g;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/social/g;->a(Lcom/creativemobi/DragRacing/social/g;)Lcom/creativemobi/DragRacing/social/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/creativemobi/DragRacing/social/d;->a()V

    .line 147
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/j;->a:Lcom/creativemobi/DragRacing/social/g;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/social/g;->dismiss()V

    move v0, v4

    .line 148
    goto :goto_1

    .line 149
    :cond_5
    const-string v0, "touch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 150
    const/4 v0, 0x0

    goto :goto_1

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/j;->a:Lcom/creativemobi/DragRacing/social/g;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/social/g;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 155
    goto :goto_1
.end method
