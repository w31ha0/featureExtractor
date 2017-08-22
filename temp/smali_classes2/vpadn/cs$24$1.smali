.class Lvpadn/cs$24$1;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs$24;->a(Lvpadn/bv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs$24;


# direct methods
.method constructor <init>(Lvpadn/cs$24;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lvpadn/cs$24$1;->a:Lvpadn/cs$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lvpadn/cs$24$1;->a:Lvpadn/cs$24;

    iget-object v0, v0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->y(Lvpadn/cs;)Lvpadn/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    const-string v0, "VideoManager"

    const-string v1, "Call trackingManager.init()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, p0, Lvpadn/cs$24$1;->a:Lvpadn/cs$24;

    iget-object v0, v0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->y(Lvpadn/cs;)Lvpadn/cu;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cu;->a()V

    .line 714
    :cond_0
    return-void
.end method
