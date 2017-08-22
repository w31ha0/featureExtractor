.class Lvpadn/af$15$1;
.super Ljava/lang/Object;
.source "VponBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/af$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/af$15;


# direct methods
.method constructor <init>(Lvpadn/af$15;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lvpadn/af$15$1;->a:Lvpadn/af$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lvpadn/af$15$1;->a:Lvpadn/af$15;

    iget-object v0, v0, Lvpadn/af$15;->b:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->h(Lvpadn/af;)V

    .line 744
    return-void
.end method
