.class Lvpadn/cs$23;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lvpadn/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lvpadn/cs$23;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpCallback(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lvpadn/cs$23;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->f(Lvpadn/cs;)Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lvpadn/cs$23;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->f(Lvpadn/cs;)Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    .line 651
    invoke-interface {v0, p1, p2}, Lvpadn/ct;->onVideoTrackingReplay(Ljava/lang/String;I)V

    .line 653
    :cond_0
    return-void
.end method
