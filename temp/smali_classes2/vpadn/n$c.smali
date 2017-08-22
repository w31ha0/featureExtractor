.class Lvpadn/n$c;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"

# interfaces
.implements Lvpadn/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;

.field final synthetic b:Lvpadn/n;


# direct methods
.method private constructor <init>(Lvpadn/n;)V
    .locals 1

    .prologue
    .line 287
    iput-object p1, p0, Lvpadn/n$c;->b:Lvpadn/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Lvpadn/n$c$1;

    invoke-direct {v0, p0}, Lvpadn/n$c$1;-><init>(Lvpadn/n$c;)V

    iput-object v0, p0, Lvpadn/n$c;->a:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lvpadn/n;Lvpadn/n$1;)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lvpadn/n$c;-><init>(Lvpadn/n;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lvpadn/n$c;->b:Lvpadn/n;

    invoke-static {v0}, Lvpadn/n;->c(Lvpadn/n;)Lvpadn/q;

    move-result-object v0

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lvpadn/n$c;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method
