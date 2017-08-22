.class Lvpadn/cs$11;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lvpadn/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs;->am()V
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
    .line 2074
    iput-object p1, p0, Lvpadn/cs$11;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpCallback(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2077
    iget-object v0, p0, Lvpadn/cs$11;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->f(Lvpadn/cs;)Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2078
    iget-object v0, p0, Lvpadn/cs$11;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->f(Lvpadn/cs;)Lcom/vpadn/widget/VpadnActivity;

    .line 2081
    :cond_0
    return-void
.end method
