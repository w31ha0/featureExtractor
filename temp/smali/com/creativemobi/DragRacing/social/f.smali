.class public final Lcom/creativemobi/DragRacing/social/f;
.super Lcom/creativemobi/DragRacing/social/b;
.source "FacebookActivity.java"


# instance fields
.field private synthetic a:Lcom/creativemobi/DragRacing/social/FacebookActivity;


# direct methods
.method public constructor <init>(Lcom/creativemobi/DragRacing/social/FacebookActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/creativemobi/DragRacing/social/f;->a:Lcom/creativemobi/DragRacing/social/FacebookActivity;

    invoke-direct {p0, p1}, Lcom/creativemobi/DragRacing/social/b;-><init>(Lcom/creativemobi/DragRacing/social/FacebookActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 89
    const-string v0, "Facebook-Example"

    const-string v1, "Dialog Success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "post_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_0

    .line 92
    const-string v0, "Facebook-Example"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog Success! post id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/f;->a:Lcom/creativemobi/DragRacing/social/FacebookActivity;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/social/FacebookActivity;->b(Lcom/creativemobi/DragRacing/social/FacebookActivity;)Lcom/creativemobi/DragRacing/social/h;

    move-result-object v1

    new-instance v5, Lcom/creativemobi/DragRacing/social/n;

    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/f;->a:Lcom/creativemobi/DragRacing/social/FacebookActivity;

    invoke-direct {v5, v0}, Lcom/creativemobi/DragRacing/social/n;-><init>(Lcom/creativemobi/DragRacing/social/FacebookActivity;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "GET"

    new-instance v0, Lcom/creativemobi/DragRacing/social/i;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/creativemobi/DragRacing/social/i;-><init>(Lcom/creativemobi/DragRacing/social/h;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/creativemobi/DragRacing/social/o;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/social/i;->start()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "Facebook-Example"

    const-string v1, "Dialo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
