.class Lvpadn/cs$k;
.super Ljava/util/TimerTask;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lvpadn/cs$k;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lvpadn/cs$k;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->k(Lvpadn/cs;)V

    .line 268
    return-void
.end method
