.class Lvpadn/cs$l;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lvpadn/cs$l;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lvpadn/cs$l;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->i(Lvpadn/cs;)I

    move-result v0

    if-lez v0, :cond_0

    .line 325
    iget-object v0, p0, Lvpadn/cs$l;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->p(Lvpadn/cs;)V

    .line 327
    :cond_0
    return-void
.end method
