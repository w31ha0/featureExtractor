.class Lvpadn/ai$a;
.super Ljava/util/TimerTask;
.source "VponNativeAdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field final synthetic b:Lvpadn/ai;


# direct methods
.method public constructor <init>(Lvpadn/ai;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lvpadn/ai$a;->b:Lvpadn/ai;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 302
    iput-object p2, p0, Lvpadn/ai$a;->a:Landroid/view/View;

    .line 303
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lvpadn/ai$a;->b:Lvpadn/ai;

    iget-object v1, p0, Lvpadn/ai$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lvpadn/ai;->c(Landroid/view/View;)V

    .line 307
    return-void
.end method
