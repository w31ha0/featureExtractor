.class Lvpadn/f$6;
.super Ljava/lang/Object;
.source "CordovaWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/f;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lvpadn/f;

.field final synthetic c:Lvpadn/f;


# direct methods
.method constructor <init>(Lvpadn/f;Ljava/lang/Runnable;Lvpadn/f;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lvpadn/f$6;->c:Lvpadn/f;

    iput-object p2, p0, Lvpadn/f$6;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lvpadn/f$6;->b:Lvpadn/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 614
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lvpadn/f$6;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 615
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 616
    iget-object v0, p0, Lvpadn/f$6;->b:Lvpadn/f;

    iget-object v1, p0, Lvpadn/f$6;->c:Lvpadn/f;

    invoke-static {v1}, Lvpadn/f;->c(Lvpadn/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvpadn/f;->b(Ljava/lang/String;)V

    .line 617
    return-void
.end method
