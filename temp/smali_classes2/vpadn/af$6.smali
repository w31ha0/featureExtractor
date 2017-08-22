.class Lvpadn/af$6;
.super Ljava/lang/Object;
.source "VponBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/af;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lvpadn/af;


# direct methods
.method constructor <init>(Lvpadn/af;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1595
    iput-object p1, p0, Lvpadn/af$6;->b:Lvpadn/af;

    iput-object p2, p0, Lvpadn/af$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1597
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    iget-object v1, p0, Lvpadn/af$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/ba;->a(Ljava/lang/String;)V

    .line 1598
    return-void
.end method
