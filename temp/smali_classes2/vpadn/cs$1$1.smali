.class Lvpadn/cs$1$1;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs$1;


# direct methods
.method constructor <init>(Lvpadn/cs$1;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lvpadn/cs$1$1;->a:Lvpadn/cs$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lvpadn/cs$1$1;->a:Lvpadn/cs$1;

    iget-object v0, v0, Lvpadn/cs$1;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->q(Lvpadn/cs;)V

    .line 357
    return-void
.end method
