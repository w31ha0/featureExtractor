.class final Lcom/creativemobi/DragRacing/social/k;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcom/creativemobi/DragRacing/social/d;


# instance fields
.field private synthetic a:Lcom/creativemobi/DragRacing/social/a;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/social/a;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/creativemobi/DragRacing/social/k;->a:Lcom/creativemobi/DragRacing/social/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 326
    const-string v0, "Facebook-authorize"

    const-string v1, "Login canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/k;->a:Lcom/creativemobi/DragRacing/social/a;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/social/a;->a(Lcom/creativemobi/DragRacing/social/a;)Lcom/creativemobi/DragRacing/social/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/creativemobi/DragRacing/social/d;->a()V

    .line 328
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 301
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 302
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/k;->a:Lcom/creativemobi/DragRacing/social/a;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/social/a;->a(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/k;->a:Lcom/creativemobi/DragRacing/social/a;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/social/a;->b(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/k;->a:Lcom/creativemobi/DragRacing/social/a;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/social/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login Success! access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/DragRacing/social/k;->a:Lcom/creativemobi/DragRacing/social/a;

    invoke-virtual {v2}, Lcom/creativemobi/DragRacing/social/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expires="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/DragRacing/social/k;->a:Lcom/creativemobi/DragRacing/social/a;

    invoke-virtual {v2}, Lcom/creativemobi/DragRacing/social/a;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/k;->a:Lcom/creativemobi/DragRacing/social/a;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/social/a;->a(Lcom/creativemobi/DragRacing/social/a;)Lcom/creativemobi/DragRacing/social/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/creativemobi/DragRacing/social/d;->a(Landroid/os/Bundle;)V

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/k;->a:Lcom/creativemobi/DragRacing/social/a;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/social/a;->a(Lcom/creativemobi/DragRacing/social/a;)Lcom/creativemobi/DragRacing/social/d;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/DragRacing/social/p;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/creativemobi/DragRacing/social/p;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/creativemobi/DragRacing/social/d;->a(Lcom/creativemobi/DragRacing/social/p;)V

    goto :goto_0
.end method

.method public final a(Lcom/creativemobi/DragRacing/social/m;)V
    .locals 3

    .prologue
    .line 316
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/k;->a:Lcom/creativemobi/DragRacing/social/a;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/social/a;->a(Lcom/creativemobi/DragRacing/social/a;)Lcom/creativemobi/DragRacing/social/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/creativemobi/DragRacing/social/d;->a(Lcom/creativemobi/DragRacing/social/m;)V

    .line 318
    return-void
.end method

.method public final a(Lcom/creativemobi/DragRacing/social/p;)V
    .locals 3

    .prologue
    .line 321
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/k;->a:Lcom/creativemobi/DragRacing/social/a;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/social/a;->a(Lcom/creativemobi/DragRacing/social/a;)Lcom/creativemobi/DragRacing/social/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/creativemobi/DragRacing/social/d;->a(Lcom/creativemobi/DragRacing/social/p;)V

    .line 323
    return-void
.end method
