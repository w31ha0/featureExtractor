.class Lvpadn/n$c$1;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/n$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/n$c;


# direct methods
.method constructor <init>(Lvpadn/n$c;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lvpadn/n$c$1;->a:Lvpadn/n$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lvpadn/n$c$1;->a:Lvpadn/n$c;

    iget-object v0, v0, Lvpadn/n$c;->b:Lvpadn/n;

    invoke-static {v0}, Lvpadn/n;->a(Lvpadn/n;)Ljava/lang/String;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lvpadn/n$c$1;->a:Lvpadn/n$c;

    iget-object v1, v1, Lvpadn/n$c;->b:Lvpadn/n;

    invoke-static {v1}, Lvpadn/n;->b(Lvpadn/n;)Lvpadn/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lvpadn/f;->c(Ljava/lang/String;)V

    .line 294
    :cond_0
    return-void
.end method
